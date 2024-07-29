import 'package:get/get.dart';
import 'package:dio/dio.dart';

import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/app_api_constants.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/admin_model/admin_model.dart';

class AuthController extends GetxController {
  final Dio _dio = Dio();
  final Logger log = Logger();
  final Rx<AdminModel?> loggedInAdmin = Rx<AdminModel?>(null);
  final url = AppApiConstant.baseUrl;

  Future<void> login(String username, String password) async {
    final loginUrl = '$url/admin/login'; // Adjust your login URL
    try {
      final response = await _dio.post(loginUrl, data: {
        'username': username,
        'password': password,
      });

      if (response.statusCode == 201) {
        final adminData = AdminModel.fromJson(response.data['data']);
        loggedInAdmin.value = adminData;
        log.e("data: $loggedInAdmin");
        log.i("Admin logged in: ${adminData.username}");
      } else {
        log.e("Login failed: ${response.data['message']}");
      }
    } on DioException catch (err) {
      log.e("DioException: $err");
    } catch (err) {
      log.e("Exception: $err");
    }
  }
}
