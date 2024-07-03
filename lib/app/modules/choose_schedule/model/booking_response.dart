import 'package:freezed_annotation/freezed_annotation.dart';
import 'booking_data.dart';

part 'booking_response.freezed.dart';
part 'booking_response.g.dart';

@freezed
class BookingResponse with _$BookingResponse {
  factory BookingResponse({
    required String message,
    required BookingData data,
    required String duration,
    required String method,
    required int statusCode,
  }) = _BookingResponse;

  factory BookingResponse.fromJson(Map<String, dynamic> json) => _$BookingResponseFromJson(json);
}
