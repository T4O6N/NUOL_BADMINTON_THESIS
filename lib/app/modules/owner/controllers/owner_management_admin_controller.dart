import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/app_api_constants.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/admin_model/admin_model.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/admin_model/fetch_admins_response_model.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/admin_model/param_create_admin_model.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/views/admin_management_page.dart';

class OwnerManagementAdminController extends GetxController {
  final Dio _dio = Dio();
  final String createAdminUrl = 'https://badminton-court-booking-api.onrender.com/admin';
  // final String fetchAdminsUrl = 'https://badminton-court-booking-api.onrender.com/Admin/FindMany';
  final String fetchAdminsUrl = 'https://618b-202-62-99-236.ngrok-free.app/Admin/FindMany';
  final String deleteAdminUrl = 'https://badminton-court-booking-api.onrender.com/admin/delete';
  final Logger log = Logger();
  final RxList<AdminModel> adminsList = <AdminModel>[].obs;
  final Rx<AdminModel?> currentAdmin = Rx<AdminModel?>(null);
  final url = AppApiConstant.baseUrl;

  Future<void> fetchAdmins() async {
    try {
      final response = await _dio.get("$url/Admin/FindMany");
      log.d("Response : ${response.data}");
      final responseData = FetchAdminsResponseModel.fromJson(response.data);
      adminsList.value = List<AdminModel>.from(responseData.data);
      log.d("Response Data: $adminsList");
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> createAdmin(ParamCreateAdminModel admin) async {
    try {
      final response = await _dio.post("$url/admin", data: admin.toJson());
      log.d("Response : ${response.data}");
      final createdAdmin = AdminModel.fromJson(response.data['data']);
      final modifiableList = List<AdminModel>.from(adminsList);
      modifiableList.add(createdAdmin);
      adminsList.value = modifiableList;
      currentAdmin.value = createdAdmin;
      log.d("create admin data:$createdAdmin");

      Get.dialog(
        AlertDialog(
          title: const Text('Success'),
          content: const Text('Admin created successfully.'),
          actions: [
            TextButton(
              onPressed: () async {
                await fetchAdmins();
                Get.back();
                Get.off(AdminManagementPage());
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> updateAdmin(AdminModel admin) async {
    final String updateAdminUrl = 'https://badminton-court-booking-api.onrender.com/admin/${admin.id}';

    try {
      final updateData = {
        "username": admin.username,
        "phone": admin.phone,
        "password": admin.password,
      };

      final response = await _dio.patch("$url/admin/${admin.id}", data: updateData);
      log.d("Response : ${response.data}");
      final updatedAdmin = AdminModel.fromJson(response.data['data']);
      final modifiableList = List<AdminModel>.from(adminsList);
      final index = modifiableList.indexWhere((a) => a.id == admin.id);
      if (index != -1) {
        modifiableList[index] = updatedAdmin;
        adminsList.value = modifiableList;
        adminsList.refresh();
      }
      Get.snackbar('Success', 'Admin updated successfully', backgroundColor: Colors.green, colorText: Colors.white);
      await fetchAdmins();
      Get.to(() => AdminManagementPage());
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
      Get.snackbar('Error', DioErrorHandler.dioErrorHandler(err), backgroundColor: Colors.red, colorText: Colors.white);
    } catch (err) {
      log.e("Exception: $err");
      Get.snackbar('Error', 'Failed to update admin', backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  Future<void> deleteAdmin(String id) async {
    try {
      await _dio.delete('$url/admin/delete/$id');
      final modifiableList = List<AdminModel>.from(adminsList);
      modifiableList.removeWhere((admin) => admin.id == id);
      adminsList.value = modifiableList;
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  @override
  void onInit() {
    fetchAdmins();
    super.onInit();
  }
}
