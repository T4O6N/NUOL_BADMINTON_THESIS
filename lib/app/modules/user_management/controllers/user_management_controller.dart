// ignore_for_file: unnecessary_overrides

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/user_management/model/admin_model.dart';
import 'package:nuol_badminton_thesis/app/modules/user_management/model/owner_model.dart';

class UserManagementController extends GetxController {
  @override
  void onInit() {
    fetchAdmins(); // Fetch all admins on init
    fetchOwners(); // Fetch all owners on init
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

  final Dio _dio = Dio();
  final String baseUrl = 'https://your-api-url.com/users';
  final Logger log = Logger();

  final RxList<AdminModel> adminList = <AdminModel>[].obs;
  final RxList<OwnerModel> ownerList = <OwnerModel>[].obs;
  final Rx<OwnerModel?> currentOwner = Rx<OwnerModel?>(null);

  // Admin CRUD operations
  Future<void> fetchAdmins() async {
    final path = "$baseUrl/admins";
    try {
      final response = await _dio.get(path);
      log.d("Response data: ${response.data}");
      adminList.value = (response.data as List).map((e) => AdminModel.fromJson(e)).toList();
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> createAdmin(AdminModel admin) async {
    final path = "$baseUrl/admins";
    try {
      final response = await _dio.post(path, data: admin.toJson());
      log.d("Admin created: ${response.data}");
      fetchAdmins(); // Refresh the admin list
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> updateAdmin(String adminId, AdminModel admin) async {
    final path = "$baseUrl/admins/$adminId";
    try {
      final response = await _dio.put(path, data: admin.toJson());
      log.d("Admin updated: ${response.data}");
      fetchAdmins(); // Refresh the admin list
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> deleteAdmin(String adminId) async {
    final path = "$baseUrl/admins/$adminId";
    try {
      final response = await _dio.delete(path);
      log.d("Admin deleted: ${response.data}");
      fetchAdmins(); // Refresh the admin list
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  // Owner CRUD operations
  Future<void> fetchOwners() async {
    final path = "$baseUrl/owners";
    try {
      final response = await _dio.get(path);
      log.d("Response data: ${response.data}");
      ownerList.value = (response.data as List).map((e) => OwnerModel.fromJson(e)).toList();
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> createOwner(OwnerModel owner) async {
    final path = "$baseUrl/owners";
    try {
      final response = await _dio.post(path, data: owner.toJson());
      log.d("Owner created: ${response.data}");
      fetchOwners(); // Refresh the owner list
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> updateOwner(String ownerId, OwnerModel owner) async {
    final path = "$baseUrl/owners/$ownerId";
    try {
      final response = await _dio.put(path, data: owner.toJson());
      log.d("Owner updated: ${response.data}");
      fetchOwners(); // Refresh the owner list
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> deleteOwner(String ownerId) async {
    final path = "$baseUrl/owners/$ownerId";
    try {
      final response = await _dio.delete(path);
      log.d("Owner deleted: ${response.data}");
      fetchOwners(); // Refresh the owner list
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> fetchCurrentOwner(String ownerId) async {
    final path = "$baseUrl/owners/$ownerId";
    try {
      final response = await _dio.get(path);
      log.d("Response data: ${response.data}");
      currentOwner.value = OwnerModel.fromJson(response.data);
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }
}
