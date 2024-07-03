import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/app_api_constants.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/booking_request.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/booking_response.dart';

class BookingCourtLocalDataSource {
  final baseUrl = AppApiConstant.baseUrl;
  final bookingUrl = AppApiConstant.courtBooking;
  var logger = Logger();
  Future<Either<String, BookingResponse>> createCourtBooking(BookingRequest bookingRequest) async {
    final Dio dio = Dio();
    final url = "$baseUrl$bookingUrl";
    final data = bookingRequest.toJson();
    try {
      final response = await dio.post(url, data: data);
      final res = BookingResponse.fromJson(response.data);
      return Right(res);
    } on DioException catch (e) {
      return Left(DioErrorHandler.dioErrorHandler(e));
    } catch (e) {
      return const Left('ບາງຢ່າງຜິດພາດ');
    }
  }
}
