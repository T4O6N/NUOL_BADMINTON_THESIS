import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/login/views/login_view.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner/owner_model.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/param/param_create_owner_model.dart';

class OwnerController extends GetxController {
  final Dio _dio = Dio();
  final String createOwnerUrl = 'https://badminton-court-booking-api.onrender.com/user-owner';
  final String fetchOwnersUrl = 'https://badminton-court-booking-api.onrender.com/user-owner/FIndMany';
  final String deleteOwnerUrl = 'https://badminton-court-booking-api.onrender.com/court-booking'; // Base URL for deletion
  final Logger log = Logger();
  final RxList<OwnerModel> ownersList = <OwnerModel>[].obs;
  final Rx<OwnerModel?> currentOwner = Rx<OwnerModel?>(null);

  Future<void> fetchOwners() async {
    try {
      final response = await _dio.get(fetchOwnersUrl);
      log.d("Response : ${response.data}");
      final List<OwnerModel> owners = (response.data as List).map((json) => OwnerModel.fromJson(json)).toList();
      ownersList.value = owners;
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> createOwner(ParamCreateOwnerModel owner) async {
    try {
      final response = await _dio.post(createOwnerUrl, data: owner.toJson());
      log.d("Response : ${response.data}");
      final OwnerModel createdOwner = OwnerModel.fromJson(response.data['data']);
      log.e("createdOwner:$createdOwner");
      ownersList.add(createdOwner);
      log.w("ownersList:$ownersList");
      currentOwner.value = createdOwner; // Set the current owner
      log.e("currentOwner:$createdOwner");
      Get.to(LoginView);
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> updateOwner(OwnerModel owner) async {
    try {
      final response = await _dio.put('$fetchOwnersUrl/${owner.id}', data: owner.toJson());
      log.d("Response : ${response.data}");
      final index = ownersList.indexWhere((o) => o.id == owner.id);
      if (index != -1) {
        ownersList[index] = OwnerModel.fromJson(response.data['data']);
      }
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> deleteOwner(String id) async {
    try {
      await _dio.delete('$deleteOwnerUrl/$id');
      ownersList.removeWhere((owner) => owner.id == id);
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  @override
  void onInit() {
    fetchOwners();
    super.onInit();
  }
}
