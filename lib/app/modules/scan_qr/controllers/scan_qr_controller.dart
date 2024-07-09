// ignore_for_file: unnecessary_overrides, avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/scan_qr/models/response_booking_data_court_available_model.dart';
import 'package:nuol_badminton_thesis/app/modules/scan_qr/models/response_find_one_history_booking_data_court_model.dart';
import 'package:nuol_badminton_thesis/app/modules/scan_qr/models/response_find_one_history_booking_data_model.dart';
import 'package:nuol_badminton_thesis/app/modules/scan_qr/models/response_find_one_history_booking_model.dart';
import 'package:nuol_badminton_thesis/app/modules/scan_qr/param/payment_param_model.dart';
import 'package:nuol_badminton_thesis/app/modules/scan_qr/views/widget/qr_data_detail.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanQrController extends GetxController with StateMixin<List<ResponseFindOneHistoryBookingDataCourtModel>> {
  final Rx<Barcode?> resultQr = Rx<Barcode?>(null);
  final Rx<QRViewController?> qrController = Rx<QRViewController?>(null);
  DashboardController dashboardController = Get.put(DashboardController());
  final Dio _dio = Dio();
  final String baseUrl = 'https://badminton-court-booking-api.onrender.com/court-booking/ById/';
  final String paymentUrl = "https://badminton-court-booking-api.onrender.com/court-booking-payment";

  final Logger log = Logger();

  final RxList<ResponseFindOneHistoryBookingDataCourtModel> courtList = <ResponseFindOneHistoryBookingDataCourtModel>[].obs;
  final RxList<ResponseBookingDataCourtAvailableModel> courtAvailableList = <ResponseBookingDataCourtAvailableModel>[].obs;
  final Rx<ResponseFindOneHistoryBookingDataModel> bookingData = const ResponseFindOneHistoryBookingDataModel().obs;

  Future<void> setQRViewCreated({required QRViewController qrViewController, required BuildContext context}) async {
    qrController.value = qrViewController;
    qrController.value?.scannedDataStream.listen((scanData) async {
      resultQr.value = scanData;
      if (resultQr.value != null) {
        final String qrCode = resultQr.value!.code ?? '';
        await fetchQrDetailForPayment(qrCode);
        qrController.value?.pauseCamera(); // Pause the camera before navigating

        Get.to(() => QrDataDetail(qrData: qrCode))?.then((_) {
          qrController.value?.resumeCamera(); // Resume the camera when returning
        });
      } else {
        log.w("No QR code scanned");
      }
    });
  }

  Future<void> fetchQrDetailForPayment(String qr) async {
    log.e(" QR details for: $qr");
    change(courtList, status: RxStatus.loading());
    final path = "$baseUrl$qr";
    try {
      final response = await _dio.get(path);
      log.d("Response data: ${response.data}");

      final responseData = ResponseFindOneHistoryBookingModel.fromJson(response.data);
      log.d("Number of courts: ${responseData.data.court.length}");

      bookingData.value = responseData.data;
      courtList.value = responseData.data.court;
      courtAvailableList.value = responseData.data.courtAvailable;

      if (responseData.data.court.isEmpty) {
        change(courtList, status: RxStatus.empty());
      } else {
        change(courtList, status: RxStatus.success());
      }
    } on DioException catch (err) {
      final errorMessage = DioErrorHandler.dioErrorHandler(err);
      log.e("DioException: $errorMessage");
      change(courtList, status: RxStatus.error(errorMessage));
    } catch (err) {
      log.e("Exception: $err");
      change(courtList, status: RxStatus.error('An unexpected error occurred'));
    }
  }

  Future<void> sendPayment(PaymentParamModel paymentParam) async {
    log.d("Sending payment for: ${paymentParam.toJson()}");
    final path = paymentUrl;
    try {
      final response = await _dio.post(path, data: paymentParam.toJson());
      log.d("Payment response data: ${response.data}");
      showSuccessDialog();

      // Handle successful payment response
    } on DioException catch (err) {
      final errorMessage = DioErrorHandler.dioErrorHandler(err);
      log.e("DioException: $errorMessage");
      // Handle payment error
    } catch (err) {
      log.e("Exception: $err");
      // Handle unexpected error
    }
  }

  void showSuccessDialog() {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 80,
              ),
              const SizedBox(height: 20),
              const Text(
                'ສຳເລັດ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const Text(
                'ການຈ່າຍເງິນຂອງທ່ານສຳເລັດແລ້ວ.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.back(); // Close the dialog
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.green,
                  // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                ),
                child: const Text(
                  'OK',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    qrController.value?.dispose();
    super.onClose();
  }
}
