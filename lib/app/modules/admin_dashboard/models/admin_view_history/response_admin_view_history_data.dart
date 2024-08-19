// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_admin_view_history_court_booking_payment_history.dart';

part 'response_admin_view_history_data.freezed.dart';
part 'response_admin_view_history_data.g.dart';

@freezed
class ResponseAdminViewHistoryData with _$ResponseAdminViewHistoryData {
  const factory ResponseAdminViewHistoryData({
    @Default('') String id,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @Default('') String username,
    @Default('') String phone,
    @Default('') String password,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'updated_at') @Default('') String updatedAt,
    @JsonKey(name: 'courtBookingPaymentHistory') @Default([]) List<ResponseAdminViewHistoryCourtBookingPaymentHistory> courtBookingPaymentHistory,
  }) = _ResponseAdminViewHistoryData;

  factory ResponseAdminViewHistoryData.fromJson(Map<String, dynamic> json) => _$ResponseAdminViewHistoryDataFromJson(json);
}
