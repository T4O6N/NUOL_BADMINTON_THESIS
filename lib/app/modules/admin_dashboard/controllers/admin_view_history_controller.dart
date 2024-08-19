import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/app_api_constants.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/controllers/auth_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/models/admin_view_history/response_admin_view_history_data.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/models/admin_view_history/response_admin_view_history_model.dart';

class AdminViewHistoryController extends GetxController {
  final Dio _dio = Dio();
  final Logger log = Logger();
  final path = AppApiConstant.baseUrl;
  final AuthController authController = Get.put(AuthController());
  final Rx<ResponseAdminViewHistoryData?> adminViewHistoryData = Rx<ResponseAdminViewHistoryData?>(null);

  Future<void> fetchAdminViewHistory() async {
    final adminId = authController.loggedInAdmin.value!.id;
    final String url = '$path/Admin/view-payments-history/$adminId';
    try {
      final response = await _dio.get(url);
      log.d("Response: ${response.data}");
      final responseData = ResponseAdminViewHistory.fromJson(response.data);
      adminViewHistoryData.value = responseData.data;
      log.d("Fetched data: ${adminViewHistoryData.value}");
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }
}
