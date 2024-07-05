// ignore_for_file: unnecessary_overrides, avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/modules/booking/models/response_booking_data_court_model.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/models/response_booking_model.dart';
import 'package:nuol_badminton_thesis/app/modules/scan_qr/views/widget/qr_data_detail.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanQrController extends GetxController with StateMixin<List<ResponseBookingDataCourtModel>> {
  Rx<Barcode?> resultQr = Rx<Barcode?>(null);
  Rx<QRViewController?> qrController = Rx<QRViewController?>(null);
  var logger = Logger();
  RxList<ResponseBookingDataCourtModel> detailList = <ResponseBookingDataCourtModel>[].obs;
  final Dio _dio = Dio();
  final String baseUrl = 'https://badminton-court-booking-api.onrender.com/court-booking/history';
  final String endPointQr = "";
  final log = Logger();

  Future<void> setQRViewCreated({required QRViewController qrViewController, required BuildContext context}) async {
    try {
      qrController.value = qrViewController;
      qrController.value!.scannedDataStream.listen((scanData) async {
        resultQr.value = scanData;
        if (resultQr.value != null) {
          final String qrCode = resultQr.value!.code ?? '';

          Get.to(QrDataDetail(qrData: qrCode));
          await fetchQrDetailForPayment(qrCode);
        } else {
          print("object");
        }
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> fetchQrDetailForPayment(String qr) async {
    log.d("enPointQr:$qr");
    change(detailList, status: RxStatus.loading());
    final path = "$baseUrl/$qr";
    try {
      final response = await _dio.get(path);
      log.d("this is response: $response");

      final json = response.data;
      final responseData = ResponseBookingModel.fromJson(json);
      log.d("this is amount: ${responseData.data.court.length}");
      // detailList.value = responseData.data.court;
    } catch (e) {}
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
    super.onClose();
    qrController.value?.dispose();
  }
}

// print("enPointQr:$endPointQr");
//     change(detailList, status: RxStatus.loading());
//     final path = "$baseUrl/$endPointQr";
//     try {
//       final response = await _dio.get(path);
//       log.d("this is response: $response");
      
//       final json = response.data;
//     } catch (e) {}