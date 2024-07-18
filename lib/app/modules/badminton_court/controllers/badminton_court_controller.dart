import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/models/badminton_court_model.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/models/fetch_badminton_courts_response_model.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/models/image_model.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/param/param_create_badminton_court_model.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/badminton_court_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BadmintonCourtController extends GetxController {
  final Dio _dio = Dio();
  final String createCourtUrl = 'https://badminton-court-booking-api.onrender.com/courts';
  final String fetchCourtsUrl = 'https://badminton-court-booking-api.onrender.com/courts/FindMany';
  final String deleteCourtUrl = 'https://badminton-court-booking-api.onrender.com/courts/delete'; // Base URL for deletion
  final Logger log = Logger();
  final RxList<BadmintonCourtModel> courtsList = <BadmintonCourtModel>[].obs;
  final Rx<BadmintonCourtModel?> currentCourt = Rx<BadmintonCourtModel?>(null);
  var images = <ImageModel>[].obs;

  Future<void> fetchCourts() async {
    try {
      final response = await _dio.get(fetchCourtsUrl);
      log.d("Response : ${response.data}");
      final responseData = FetchBadmintonCourtsResponseModel.fromJson(response.data);
      courtsList.value = responseData.data;
      log.d("Response Data: $courtsList");
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> createCourt(ParamCreateBadmintonCourtModel court) async {
    try {
      log.i("data court : $court");
      final response = await _dio.post(createCourtUrl, data: court.toJson());
      log.d("Response : ${response.data}");
      final createdCourt = BadmintonCourtModel.fromJson(response.data['data']);
      final modifiableList = List<BadmintonCourtModel>.from(courtsList);
      modifiableList.add(createdCourt);
      courtsList.value = modifiableList;
      currentCourt.value = createdCourt;
      log.d("create court data: $createdCourt");

      Get.dialog(
        AlertDialog(
          title: const Text('Success'),
          content: const Text('Court created successfully.'),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
                Get.to(const BadmintonCourtView());
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
      Get.snackbar('Error', DioErrorHandler.dioErrorHandler(err), backgroundColor: Colors.red, colorText: Colors.white);
    } catch (err) {
      log.e("Exception: $err");
      Get.snackbar('Error', 'Failed to create court', backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  Future<void> updateCourt(BadmintonCourtModel court) async {
    final String updateCourtUrl = 'https://badminton-court-booking-api.onrender.com/courts/${court.id}';

    try {
      final updateData = {
        "court_number": court.courtNumber,
        "description": court.description,
      };

      final response = await _dio.patch(updateCourtUrl, data: updateData);
      log.d("Response : ${response.data}");
      final updatedCourt = BadmintonCourtModel.fromJson(response.data['data']);
      final modifiableList = List<BadmintonCourtModel>.from(courtsList);
      final index = modifiableList.indexWhere((c) => c.id == court.id);
      if (index != -1) {
        modifiableList[index] = updatedCourt;
        courtsList.value = modifiableList;
        courtsList.refresh();
      }
      Get.snackbar('Success', 'Court updated successfully', backgroundColor: Colors.green, colorText: Colors.white);
      await fetchCourts();
      Get.off(const BadmintonCourtView());
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
      Get.snackbar(
        'Error',
        DioErrorHandler.dioErrorHandler(err),
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } catch (err) {
      log.e("Exception: $err");
      Get.snackbar(
        'Error',
        'Failed to update court',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  Future<void> deleteCourt(String id) async {
    try {
      await _dio.delete('$deleteCourtUrl/$id');
      final modifiableList = List<BadmintonCourtModel>.from(courtsList);
      modifiableList.removeWhere((court) => court.id == id);
      courtsList.value = modifiableList;
      Get.snackbar('Success', 'Court deleted successfully', backgroundColor: Colors.green, colorText: Colors.white);
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
      Get.snackbar('Error', DioErrorHandler.dioErrorHandler(err), backgroundColor: Colors.red, colorText: Colors.white);
    } catch (err) {
      log.e("Exception: $err");
      Get.snackbar('Error', 'Failed to delete court', backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  void addImage(ImageModel image) {
    images.add(image);
    saveImages();
  }

  void deleteImage(int index) {
    images.removeAt(index);
    saveImages();
  }

  void saveImages() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> imagesJson = images.map((image) => json.encode(image.toJson())).toList();
    await prefs.setStringList('images', imagesJson);
  }

  void loadImages() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? imagesJson = prefs.getStringList('images');
    if (imagesJson != null) {
      images.value = imagesJson.map((imageJson) => ImageModel.fromJson(json.decode(imageJson))).toList();
    }
  }

  @override
  void onInit() {
    fetchCourts();
    loadImages();
    super.onInit();
  }
}
