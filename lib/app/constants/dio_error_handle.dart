import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DioErrorHandler {
  static String dioErrorHandler(DioException err) {
    try {
      if (err.error.runtimeType == SocketException && err.type == DioExceptionType.connectionError) {
        return 'noInternet'.tr;
      } else if (err.response != null && err.response?.data != null && err.response?.data?['message'] != null) {
        return err.response?.data['message'];
      } else if (err.response != null && err.response?.data != null) {
        return err.response?.data;
      } else {
        return 'some_thing_went_wrong'.tr;
      }
    } catch (e) {
      return 'some_thing_went_wrong'.tr;
    }
  }
}
