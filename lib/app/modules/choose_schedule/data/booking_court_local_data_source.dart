import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'package:nuol_badminton_thesis/app/constants/app_api_constants.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/response_booking_model.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/param/create_booking_court_param.dart';

class BookingCourtLocalDataSource {
  final baseUrl = AppApiConstant.baseUrl;
  final bookingUrl = AppApiConstant.courtBooking;
  var logger = Logger();
  Future<Either<String, ResponseBookingModel>> createCourtBooking(CreateBookingCourtParam param) async {
    final Dio dio = Dio();
    final url = "$baseUrl$bookingUrl";
    final data = jsonEncode(param.toJson());
    logger.d("this is data : $data");
    try {
      final response = await dio.post(url, data: data);
      logger.d("this is response : ${response.data}");
      final res = ResponseBookingModel.fromJson(response.data);
      logger.d("this is res : $res");
      return Right(res);
    } on DioException catch (e) {
      return Left(DioErrorHandler.dioErrorHandler(e));
    } catch (e) {
      return const Left('ບາງຢ່າງຜິດພາດ');
    }
  }
}
