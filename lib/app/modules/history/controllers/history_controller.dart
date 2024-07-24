// ignore_for_file: unnecessary_overrides

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/app_api_constants.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/history/models/response_find_many_payment_history_data_model.dart';
import 'package:nuol_badminton_thesis/app/modules/history/models/response_find_many_payment_history_model.dart';

class HistoryController extends GetxController with StateMixin<List<ResponseFindManyPaymentHistoryDataModel>> {
  DashboardController dashboardController = Get.put(DashboardController());
  RxList<ResponseFindManyPaymentHistoryDataModel> paymentList = <ResponseFindManyPaymentHistoryDataModel>[].obs;
  var log = Logger();
  final Dio _dio = Dio();
  final url = AppApiConstant.baseUrl;

  Future<void> fetchPaymentHistory() async {
    change(paymentList, status: RxStatus.loading());
    final deviceId = dashboardController.deviceInfoModel.value.id;
    try {
      final response = await _dio.get("$url/$deviceId");
      final json = response.data;
      final res = ResponseFindManyPaymentHistoryModel.fromJson(json);
      log.d("this is data: ${res.data}");
      paymentList.value = res.data;
      if (res.data.isEmpty) {
        change(paymentList, status: RxStatus.empty());
      } else {
        change(paymentList, status: RxStatus.success());
      }
    } on DioException catch (err) {
      change(paymentList, status: RxStatus.error(DioErrorHandler.dioErrorHandler(err)));
    } catch (err) {
      change(paymentList, status: RxStatus.error());
    }
  }

  @override
  Future<void> onInit() async {
    await fetchPaymentHistory();
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
