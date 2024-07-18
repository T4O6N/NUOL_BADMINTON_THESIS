import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/models/badminton_court_model.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/models/fetch_badminton_courts_response_model.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/param/param_create_badminton_court_model.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/badminton_court_view.dart';

class BadmintonCourtController extends GetxController {
  final Dio _dio = Dio();
  final String createCourtUrl = 'https://badminton-court-booking-api.onrender.com/courts';
  final String fetchCourtsUrl = 'https://badminton-court-booking-api.onrender.com/courts/FindMany';
  final String deleteCourtUrl = 'https://badminton-court-booking-api.onrender.com/courts/delete'; // Fixed URL for deletion
  final Logger log = Logger();
  final RxList<BadmintonCourtModel> courtsList = <BadmintonCourtModel>[].obs;
  final Rx<BadmintonCourtModel?> currentCourt = Rx<BadmintonCourtModel?>(null);

  Future<void> fetchCourts() async {
    try {
      final response = await _dio.get(fetchCourtsUrl);
      log.d("Response : ${response.data}");
      final responseData = FetchBadmintonCourtsResponseModel.fromJson(response.data);
      courtsList.value = List<BadmintonCourtModel>.from(responseData.data);
      log.i("Fetched Courts: ${courtsList.length}");
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> createCourt(ParamCreateBadmintonCourtModel court) async {
    try {
      log.i("Creating court: $court");
      final response = await _dio.post(createCourtUrl, data: court.toJson());
      log.d("Response : ${response.data}");
      final createdCourt = BadmintonCourtModel.fromJson(response.data['data']);
      courtsList.add(createdCourt);
      currentCourt.value = createdCourt;
      log.d("Created court: $createdCourt");

      Get.dialog(
        AlertDialog(
          title: const Text('Success'),
          content: const Text('Court created successfully.'),
          actions: [
            TextButton(
              onPressed: () async {
                await fetchCourts();
                Get.back();
                Get.off(const BadmintonCourtView());
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
      final index = courtsList.indexWhere((c) => c.id == court.id);
      if (index != -1) {
        courtsList[index] = updatedCourt;
      }
      log.i("Updated court: $updatedCourt");
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
      courtsList.removeWhere((court) => court.id == id);
      log.i("Deleted court with ID: $id");
      Get.snackbar('Success', 'Court deleted successfully', backgroundColor: Colors.green, colorText: Colors.white);
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
      Get.snackbar('Error', DioErrorHandler.dioErrorHandler(err), backgroundColor: Colors.red, colorText: Colors.white);
    } catch (err) {
      log.e("Exception: $err");
      Get.snackbar('Error', 'Failed to delete court', backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  @override
  void onInit() {
    fetchCourts();
    super.onInit();
  }
}
