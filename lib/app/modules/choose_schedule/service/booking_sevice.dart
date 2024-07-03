import 'package:dio/dio.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/booking_request.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/booking_response.dart';

class BookingService {
  final Dio _dio = Dio();

  Future<BookingResponse> createBooking(BookingRequest request) async {
    final data = request.toJson();
    print(data);
    final response = await _dio.post(
      'https://badminton-court-booking-api.onrender.com/court-booking',
      data: request.toJson(),
    );

    if (response.statusCode == 201) {
      return BookingResponse.fromJson(response.data);
    } else {
      throw Exception('Failed to create booking');
    }
  }
}
