// ignore_for_file: unnecessary_overrides

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_dashboard/court_usage_model.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_dashboard/court_usage_response_model.dart';

import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_dashboard/weekly_income_model.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_dashboard/weekly_income_response_model.dart';

class OwnerDashboard extends GetxController {
  final Dio _dio = Dio();
  final String courtUseUrl = 'https://badminton-court-booking-api.onrender.com/dashboard/court-used-report';
  final String incomeUrl = 'https://badminton-court-booking-api.onrender.com/dashboard/income-report';
  final Logger log = Logger();
  final RxInt totalWeeklyIncome = 0.obs;

  final RxList<CourtUsageModel> courtUsageList = <CourtUsageModel>[].obs;
  final RxList<WeeklyIncomeModel> weeklyIncomeList = <WeeklyIncomeModel>[].obs;

  Future<void> fetchCourtUsage() async {
    final path = courtUseUrl;
    try {
      final response = await _dio.get(path);
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
    final path = incomeUrl;
    try {
      final response = await _dio.get(path);
      log.d("Response data: ${response.data}");

      final responseData = WeeklyIncomeResponseModel.fromJson(response.data);
      weeklyIncomeList.value = responseData.data.weeklyIncome;
      totalWeeklyIncome.value = responseData.data.totalWeeklyIncome;
      log.d("Response weeklyIncomeList: $weeklyIncomeList");
    } on DioException catch (err) {
      final errorMessage = DioErrorHandler.dioErrorHandler(err);
      log.e("DioException: $errorMessage");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  @override
  Future<void> onInit() async {
    await fetchCourtUsage(); // Fetch court usage on init
    await fetchWeeklyIncome();
    super.onInit();
  }
}
