import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuol_badminton_thesis/app/modules/booking/model/court_booking.dart';
part 'booking_history.freezed.dart';
part 'booking_history.g.dart';

@freezed
class BookingHistory with _$BookingHistory {
  factory BookingHistory({
    required String id,
    required String device_id,
    required String courtBookingId,
    required String created_at,
    required String updated_at,
    required CourtBooking courtBooking,
  }) = _BookingHistory;

  factory BookingHistory.fromJson(Map<String, dynamic> json) => _$BookingHistoryFromJson(json);
}
