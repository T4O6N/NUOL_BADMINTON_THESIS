// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_get_viewer_all_admin_court_available.dart';

part 'response_get_viewer_all_admin_court_booking_payment_history.freezed.dart';
part 'response_get_viewer_all_admin_court_booking_payment_history.g.dart';

@freezed
class ResponseGetViewerAllAdminCourtBookingPaymentHistory with _$ResponseGetViewerAllAdminCourtBookingPaymentHistory {
  const factory ResponseGetViewerAllAdminCourtBookingPaymentHistory({
    @Default('') String id,
    @Default('') @JsonKey(name: 'created_at') String createdAt,
    @Default('') @JsonKey(name: 'updated_at') String updatedAt,
    @Default('') @JsonKey(name: 'device_id') String deviceId,
    @Default('') @JsonKey(name: 'booking_payment_id') String bookingPaymentId,
    @Default('') @JsonKey(name: 'court_available_id') String courtAvailableId,
    @Default('') @JsonKey(name: 'admin_id') String adminId,
    @Default(ResponseGetViewerAllAdminCourtAvailable()) @JsonKey(name: 'court_available') ResponseGetViewerAllAdminCourtAvailable courtAvailable,
  }) = _ResponseGetViewerAllAdminCourtBookingPaymentHistory;

  factory ResponseGetViewerAllAdminCourtBookingPaymentHistory.fromJson(Map<String, dynamic> json) => _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryFromJson(json);
}
