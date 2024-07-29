// ignore_for_file: unnecessary_overrides

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/app_api_constants.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/models/response_booking_daily_history_data_model.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/models/response_booking_daily_history_model.dart';

class AdminDashboardController extends GetxController {
  late PageController pageController;
  //Function for go the page
  RxInt currentPage = 0.obs;

  final Dio _dio = Dio();
  final url = AppApiConstant.baseUrl;
  final Logger log = Logger();
  final RxList<ResponseBookingDailyHistoryDataModel> bookingHistoryList = <ResponseBookingDailyHistoryDataModel>[].obs;

  Future<void> fetchBookingDailyHistory() async {
    try {
      final response = await _dio.get("$url/Admin/daily/court-booking-history");
      log.d("Response : ${response.data}");
      final responseData = ResponseBookingDailyHistoryModel.fromJson(response.data);
      bookingHistoryList.value = responseData.data;
      log.d("Response Data: $bookingHistoryList");
    } on DioException catch (err) {
      log.e("DioException: $err");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  @override
  void onInit() {
    fetchBookingDailyHistory();
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
