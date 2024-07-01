import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nuol_badminton_thesis/app/constants/app_api_constants.dart';
import 'package:nuol_badminton_thesis/app/constants/dio_error_handle.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/response_booking_detail_court_model.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/param/create_booking_court_param.dart';

class BookingCourtLocalDataSource {
  final baseUrl = AppApiConstant.baseUrl;
  final bookingUrl = AppApiConstant.courtBooking;
  Future<Either<String, ResponseBookingDetailCourtModel>> createCourtBooking(CreateBookingCourtParam param) async {
    final Dio dio = Dio();
    final url = "$baseUrl$bookingUrl";
    final data = param.toJson();
    try {
      final response = await dio.post(url, data: {'title': 'My post', 'body': 'This is my post content', 'userId': 1});
      final res = ResponseBookingDetailCourtModel.fromJson(response.data);
      return Right(res);
    } on DioException catch (e) {
      return Left(DioErrorHandler.dioErrorHandler(e));
    } catch (e) {
      return const Left('ບາງຢ່າງຜິດພາດ');
    }
  }
}
