import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/modules/login/views/login_view.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/create_owner/response_create_owner_model.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/find_many_owner/fetch_owners_response_model.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/owner/owner_model.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/param/param_create_owner_model.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/views/owner_management_page.dart';

class OwnerController extends GetxController {
  final Dio _dio = Dio();
  final String createOwnerUrl = 'https://badminton-court-booking-api.onrender.com/user-owner';
  // final String fetchOwnersUrl = 'https://badminton-court-booking-api.onrender.com/user-owner/FIndMany';
  final String fetchOwnersUrl = 'https://618b-202-62-99-236.ngrok-free.app/user-owner/FIndMany';
  final String deleteOwnerUrl = 'https://badminton-court-booking-api.onrender.com/user-owner/delete';
  final Logger log = Logger();
  final RxList<OwnerModel> ownersList = <OwnerModel>[].obs;
  final Rx<OwnerModel?> currentOwner = Rx<OwnerModel?>(null);

  Future<void> fetchOwners() async {
    try {
      final response = await _dio.get(fetchOwnersUrl);
      log.d("Response : ${response.data}");
      final responseData = FetchOwnersResponseModel.fromJson(response.data);
      ownersList.value = List<OwnerModel>.from(responseData.data); // Ensure it's a modifiable list
      log.d("Response Data: $ownersList");
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
      final createdOwner = ResponseCreateOwnerModel.fromJson(response.data);
      final modifiableList = List<OwnerModel>.from(ownersList);
      modifiableList.add(createdOwner.data);
      ownersList.value = modifiableList; // Assign the new modifiable list
      currentOwner.value = createdOwner.data;
      log.d("create owner data:$createdOwner");

      // Show dialog and navigate to LoginView
      Get.dialog(
        AlertDialog(
          title: const Text('Success'),
          content: const Text('Owner created successfully.'),
          actions: [
            TextButton(
              onPressed: () {
                Get.back(); // Close the dialog
                Get.to(LoginView());
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

  Future<void> updateOwner(OwnerModel owner) async {
    final String updateOwnerUrl = 'https://badminton-court-booking-api.onrender.com/user-owner/${owner.id}';

    try {
      // Prepare data for update, removing unnecessary fields
      final updateData = {
        "username": owner.username,
        "phone": owner.phone,
        "password": owner.password,
      };

      final response = await _dio.patch(updateOwnerUrl, data: updateData);
      log.d("Response : ${response.data}");
      final updatedOwner = OwnerModel.fromJson(response.data['data']);
      final modifiableList = List<OwnerModel>.from(ownersList); // Create a modifiable list
      final index = modifiableList.indexWhere((o) => o.id == owner.id);
      if (index != -1) {
        modifiableList[index] = updatedOwner;
        ownersList.value = modifiableList; // Assign the new modifiable list
        ownersList.refresh();
      }
      Get.snackbar('Success', 'Owner updated successfully', backgroundColor: Colors.green, colorText: Colors.white);
      await fetchOwners(); // Refresh the owners list
      Get.to(() => OwnerManagementPage()); // Navigate back to the Owner Management Page
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
      Get.snackbar('Error', DioErrorHandler.dioErrorHandler(err), backgroundColor: Colors.red, colorText: Colors.white);
    } catch (err) {
      log.e("Exception: $err");
      Get.snackbar('Error', 'Failed to update owner', backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  Future<void> deleteOwner(String id) async {
    try {
      await _dio.delete('$deleteOwnerUrl/$id');
      final modifiableList = List<OwnerModel>.from(ownersList);
      modifiableList.removeWhere((owner) => owner.id == id);
      ownersList.value = modifiableList; // Assign the new modifiable list
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
