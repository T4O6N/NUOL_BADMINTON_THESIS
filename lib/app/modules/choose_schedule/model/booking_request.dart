import 'package:freezed_annotation/freezed_annotation.dart';
import 'court_duration.dart';

part 'booking_request.freezed.dart';
part 'booking_request.g.dart';

@freezed
class BookingRequest with _$BookingRequest {
  factory BookingRequest({
    required String device_id,
    required String phone,
    required String full_name,
    required String court_number,
    required String payment_status,
    @Default('') String? booked_by,
    @Default(0) int total_amount,
    @Default([]) List<CourtDuration> court,
  }) = _BookingRequest;

  factory BookingRequest.fromJson(Map<String, dynamic> json) => _$BookingRequestFromJson(json);
}
