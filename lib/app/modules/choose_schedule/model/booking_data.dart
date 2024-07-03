import 'package:freezed_annotation/freezed_annotation.dart';
import 'court_response.dart';

part 'booking_data.freezed.dart';
part 'booking_data.g.dart';

@freezed
class BookingData with _$BookingData {
  factory BookingData({
    required String id,
    required String device_id,
    required String phone,
    required String full_name,
    required String court_number,
    required String payment_status,
    @Default(0) int total_amount,
    required String booked_by,
    required String expiredTime,
    required String bookingDate,
    required String created_at,
    required String updated_at,
    @Default([]) List<CourtResponse> court,
  }) = _BookingData;

  factory BookingData.fromJson(Map<String, dynamic> json) => _$BookingDataFromJson(json);
}
