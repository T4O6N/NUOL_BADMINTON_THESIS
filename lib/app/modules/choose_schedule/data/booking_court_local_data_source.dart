import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/constants/app_api_constants.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/models/response_booking_model.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/param/create_booking_court_param.dart';

class BookingCourtLocalDataSource {
  final bookingUrl = AppApiConstant.courtBooking;
  final url = AppApiConstant.baseUrl;
  var logger = Logger();
  Future<Either<String, ResponseBookingModel>> createCourtBooking(CreateBookingCourtParam bookingRequest) async {
    final Dio dio = Dio();

    final data = bookingRequest.toJson();
    try {
      final response = await dio.post("$url/$bookingUrl", data: data);
      final res = ResponseBookingModel.fromJson(response.data);
      return Right(res);
    } on DioException catch (e) {
      return Left(DioErrorHandler.dioErrorHandler(e));
    } catch (e) {
      return const Left('ບາງຢ່າງຜິດພາດ');
    }
  }
}
