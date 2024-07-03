import 'package:dio/dio.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/response_booking_model.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/param/create_booking_court_param.dart';

class BookingService {
  final Dio _dio = Dio();

  Future<ResponseBookingModel> createBooking(CreateBookingCourtParam request) async {
    final data = request.toJson();
    print(data);
    final response = await _dio.post(
      'https://badminton-court-booking-api.onrender.com/court-booking',
      data: request.toJson(),
    );

    if (response.statusCode == 201) {
      return ResponseBookingModel.fromJson(response.data);
    } else {
      throw Exception('Failed to create booking');
    }
  }
}
