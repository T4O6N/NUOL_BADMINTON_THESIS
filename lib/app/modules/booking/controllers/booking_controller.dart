import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';

import 'package:nuol_badminton_thesis/app/modules/booking/models/response_booking_history_data_model.dart';
import 'package:nuol_badminton_thesis/app/modules/booking/models/response_booking_history_model.dart';
import 'package:nuol_badminton_thesis/app/modules/dashboard/controllers/dashboard_controller.dart';

class BookingController extends GetxController with StateMixin<List<ResponseBookingHistoryDataModel>> {
  DashboardController dashboardController = Get.put(DashboardController());
  RxList<ResponseBookingHistoryDataModel> bookingList = <ResponseBookingHistoryDataModel>[].obs;
  var log = Logger();

  final Dio _dio = Dio();
  final String baseUrl = 'https://badminton-court-booking-api.onrender.com/court-booking/history';

  Future<void> fetchBookingHistory() async {
    change(bookingList, status: RxStatus.loading());
    final deviceId = dashboardController.deviceInfoModel.value.id;
    final path = "$baseUrl/$deviceId";
    try {
      final response = await _dio.get(path);
      final json = response.data;
      final res = ResponseBookingHistoryModel.fromJson(json);
      log.d("this is data: ${res.data}");
      bookingList.value = res.data;
      if (res.data.isEmpty) {
        change(bookingList, status: RxStatus.empty());
      } else {
        change(bookingList, status: RxStatus.success());
      }
    } on DioException catch (err) {
      change(bookingList, status: RxStatus.error(DioErrorHandler.dioErrorHandler(err)));
    } catch (err) {
      change(bookingList, status: RxStatus.error());
    }
  }

  @override
  Future<void> onInit() async {
    await fetchBookingHistory();
    super.onInit();
  }
}
