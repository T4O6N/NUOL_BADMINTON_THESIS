// ignore_for_file: unnecessary_overrides

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/app_api_constants.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/dialy_income_dashboard_model/daily_income_data.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/dialy_income_dashboard_model/response_daily_income_report.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/owner_dashboard/court_usage_model.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/owner_dashboard/court_usage_response_model.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/owner_dashboard_income_model/day_income.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/owner_dashboard_income_model/weekly_income_response.dart';

class OwnerDashboard extends GetxController {
  final Dio _dio = Dio();
  final Logger log = Logger();
  final RxInt totalWeeklyIncome = 0.obs;
  final String url = AppApiConstant.baseUrl;
  final RxList<CourtUsageModel> courtUsageList = <CourtUsageModel>[].obs;
  final RxList<DayIncome> weeklyIncomeList = <DayIncome>[].obs;
  final Rx<DailyIncomeData?> dailyIncomeData = Rx<DailyIncomeData?>(null);

  Future<void> fetchCourtUsage() async {
    try {
      final response = await _dio.get("$url/dashboard/court-used-report");
      log.d("Response : ${response.data}");
      final responseData = CourtUsageResponseModel.fromJson(response.data);
      courtUsageList.value = responseData.data;
      log.d("Response Data: $courtUsageList");
    } on DioException catch (err) {
      final errorMessage = DioErrorHandler.dioErrorHandler(err);
      log.e("DioException: $errorMessage");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> fetchWeeklyIncome() async {
    try {
      final response = await _dio.get("$url/dashboard/income-report");
      final responseData = WeeklyIncomeResponse.fromJson(response.data);
      weeklyIncomeList.value = responseData.data.days;
      totalWeeklyIncome.value = responseData.data.totalWeeklyIncome;
      log.d("Weekly income fetched successfully.");
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> fetchDailyIncomeReport() async {
    try {
      final response = await _dio.get("$url/dashboard/daily-income-report");
      log.d("Response: ${response.data}");
      final responseData = ResponseDailyIncomeReport.fromJson(response.data);
      dailyIncomeData.value = responseData.data;
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  @override
  Future<void> onInit() async {
    await fetchCourtUsage(); // Fetch court usage on init
    await fetchWeeklyIncome();
    await fetchDailyIncomeReport();
    super.onInit();
  }
}
