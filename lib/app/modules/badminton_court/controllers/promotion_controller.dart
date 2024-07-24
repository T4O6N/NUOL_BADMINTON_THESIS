import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/app_api_constants.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/models/fetch_promotions_response_model.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/models/promotion_model.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/param/param_create_promotion_model.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/promotion_view.dart';

class PromotionController extends GetxController {
  final Dio _dio = Dio();
  final String createPromotionUrl = 'https://badminton-court-booking-api.onrender.com/promotion';
  final String fetchPromotionsUrl = 'https://badminton-court-booking-api.onrender.com/promotion/FindMay';
  final String deletePromotionUrl = 'https://badminton-court-booking-api.onrender.com/promotion/delete'; // Base URL for deletion
  final Logger log = Logger();
  final url = AppApiConstant.baseUrl;
  final RxList<PromotionModel> promotionsList = <PromotionModel>[].obs;
  final Rx<PromotionModel?> currentPromotion = Rx<PromotionModel?>(null);

  Future<void> fetchPromotionById(String id) async {
    // final String fetchPromotionUrl = 'https://badminton-court-booking-api.onrender.com/promotion/byId/$id';
    try {
      final response = await _dio.get("$url/promotion/byId/$id");
      log.d("Response : ${response.data}");
      final promotion = PromotionModel.fromJson(response.data['data']);
      currentPromotion.value = promotion;
      log.i("Fetched promotion: $promotion");
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
        'Failed to fetch promotion details',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  Future<void> fetchPromotions() async {
    try {
      final response = await _dio.get("$url/promotion/FindMay");
      log.d("Response : ${response.data}");
      final responseData = FetchPromotionsResponseModel.fromJson(response.data);
      promotionsList.value = responseData.data;
      log.d("Response Data: $promotionsList");
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
    } catch (err) {
      log.e("Exception: $err");
    }
  }

  Future<void> createPromotion(ParamCreatePromotionModel promotion) async {
    try {
      log.i("Creating promotion: $promotion");
      final response = await _dio.post("$url/promotion", data: promotion.toJson());
      log.d("Response : ${response.data}");
      final createdPromotion = PromotionModel.fromJson(response.data['data']);
      promotionsList.add(createdPromotion);
      currentPromotion.value = createdPromotion;
      log.d("Created promotion: $createdPromotion");

      Get.dialog(
        AlertDialog(
          title: const Text('Success'),
          content: const Text('Promotion created successfully.'),
          actions: [
            TextButton(
              onPressed: () async {
                await fetchPromotions();
                Get.back();
                Get.to(const PromotionView());
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
      Get.snackbar('Error', 'Failed to create promotion', backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  Future<void> updatePromotion(PromotionModel promotion) async {
    final String updatePromotionUrl = 'https://badminton-court-booking-api.onrender.com/promotion/${promotion.id}';
    try {
      final updateData = {
        "title": promotion.title,
        "discount": promotion.discount,
      };

      final response = await _dio.patch("$url/promotion/${promotion.id}", data: updateData);
      log.d("Response : ${response.data}");
      final updatedPromotion = PromotionModel.fromJson(response.data['data']);
      final index = promotionsList.indexWhere((p) => p.id == promotion.id);
      if (index != -1) {
        promotionsList[index] = updatedPromotion;
      }
      log.i("Updated promotion: $updatedPromotion");
      Get.snackbar('Success', 'Promotion updated successfully', backgroundColor: Colors.green, colorText: Colors.white);
      await fetchPromotions();
      Get.off(const PromotionView());
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
        'Failed to update promotion',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  Future<void> deletePromotion(String id) async {
    try {
      await _dio.delete('$deletePromotionUrl/$id');
      promotionsList.removeWhere((promotion) => promotion.id == id);
      log.i("Deleted promotion with ID: $id");
      Get.snackbar('Success', 'Promotion deleted successfully', backgroundColor: Colors.green, colorText: Colors.white);
    } on DioException catch (err) {
      log.e("DioException: ${DioErrorHandler.dioErrorHandler(err)}");
      Get.snackbar('Error', DioErrorHandler.dioErrorHandler(err), backgroundColor: Colors.red, colorText: Colors.white);
    } catch (err) {
      log.e("Exception: $err");
      Get.snackbar('Error', 'Failed to delete promotion', backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  @override
  void onInit() {
    fetchPromotions();
    super.onInit();
  }
}
