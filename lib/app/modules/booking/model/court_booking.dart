import 'package:freezed_annotation/freezed_annotation.dart';

part 'court_booking.freezed.dart';
part 'court_booking.g.dart';

@freezed
class CourtBooking with _$CourtBooking {
  factory CourtBooking({
    required String id,
    required String device_id,
    required String phone,
    required String full_name,
    required String court_number,
    required String payment_status,
    @Default(0) int total_amount,
    @Default('') String booked_by,
    required String expiredTime,
    required String bookingDate,
    required String created_at,
    required String updated_at,
  }) = _CourtBooking;

  factory CourtBooking.fromJson(Map<String, dynamic> json) => _$CourtBookingFromJson(json);
}
