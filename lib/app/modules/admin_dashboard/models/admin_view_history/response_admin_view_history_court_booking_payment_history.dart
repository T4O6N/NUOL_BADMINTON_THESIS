// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_admin_view_history_court_booking_payment_history.freezed.dart';
part 'response_admin_view_history_court_booking_payment_history.g.dart';

@freezed
class ResponseAdminViewHistoryCourtBookingPaymentHistory with _$ResponseAdminViewHistoryCourtBookingPaymentHistory {
  const factory ResponseAdminViewHistoryCourtBookingPaymentHistory({
    @Default('') String id,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'updated_at') @Default('') String updatedAt,
    @JsonKey(name: 'device_id') @Default('') String deviceId,
    @JsonKey(name: 'booking_payment_id') @Default('') String bookingPaymentId,
    @JsonKey(name: 'court_available_id') @Default('') String courtAvailableId,
    @JsonKey(name: 'admin_id') @Default('') String adminId,
  }) = _ResponseAdminViewHistoryCourtBookingPaymentHistory;

  factory ResponseAdminViewHistoryCourtBookingPaymentHistory.fromJson(Map<String, dynamic> json) => _$ResponseAdminViewHistoryCourtBookingPaymentHistoryFromJson(json);
}
