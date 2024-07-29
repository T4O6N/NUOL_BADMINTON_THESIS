import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/app_api_constants.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/viewer_all_admin/response_get_viewer_all_admin_data.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/viewer_all_admin/response_get_viewer_all_admin_model.dart';

class OwnerViewerAllAdminController extends GetxController {
  final Dio _dio = Dio();
  final url = AppApiConstant.baseUrl;

  final Logger log = Logger();
  final RxList<ResponseGetViewerAllAdminData> adminList = <ResponseGetViewerAllAdminData>[].obs;

  Future<void> fetchAdmins() async {
    final String fetchAdminsUrl = '$url/user-owner/get-active-admin';
    try {
      final response = await _dio.get(fetchAdminsUrl);
      log.d("Response : ${response.data}");
      final responseData = ResponseGetViewerAllAdmin.fromJson(response.data);
      adminList.value = responseData.data;
      log.e("Response Data: $adminList");
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
      Get.snackbar('Error', DioErrorHandler.dioErrorHandler(err), backgroundColor: Colors.red, colorText: Colors.white);
    } catch (err) {
      log.e("Exception: $err");
      Get.snackbar('Error', 'Failed to fetch admins', backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  @override
  void onInit() {
    fetchAdmins();
    super.onInit();
  }
}
