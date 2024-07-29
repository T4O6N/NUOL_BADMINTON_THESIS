// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_get_viewer_all_admin_court_booking_payment_history.dart';

part 'response_get_viewer_all_admin_data.freezed.dart';
part 'response_get_viewer_all_admin_data.g.dart';

@freezed
class ResponseGetViewerAllAdminData with _$ResponseGetViewerAllAdminData {
  const factory ResponseGetViewerAllAdminData({
    @Default('') String id,
    @Default(true) bool isActive,
    @Default('') String username,
    @Default('') String phone,
    @Default('') String password,
    @Default('') @JsonKey(name: 'created_at') String createdAt,
    @Default('') @JsonKey(name: 'updated_at') String updatedAt,
    @Default(<ResponseGetViewerAllAdminCourtBookingPaymentHistory>[]) List<ResponseGetViewerAllAdminCourtBookingPaymentHistory> courtBookingPaymentHistory,
  }) = _ResponseGetViewerAllAdminData;

  factory ResponseGetViewerAllAdminData.fromJson(Map<String, dynamic> json) => _$ResponseGetViewerAllAdminDataFromJson(json);
}
