// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_get_viewer_all_admin_court_booking.dart';

part 'response_get_viewer_all_admin_court_available.freezed.dart';
part 'response_get_viewer_all_admin_court_available.g.dart';

@freezed
class ResponseGetViewerAllAdminCourtAvailable with _$ResponseGetViewerAllAdminCourtAvailable {
  const factory ResponseGetViewerAllAdminCourtAvailable({
    @Default(0) @JsonKey(name: 'all_total_amount') int allTotalAmount,
    @Default(ResponseGetViewerAllAdminCourtBooking()) @JsonKey(name: 'court_booking') ResponseGetViewerAllAdminCourtBooking courtBooking,
  }) = _ResponseGetViewerAllAdminCourtAvailable;

  factory ResponseGetViewerAllAdminCourtAvailable.fromJson(Map<String, dynamic> json) => _$ResponseGetViewerAllAdminCourtAvailableFromJson(json);
}
