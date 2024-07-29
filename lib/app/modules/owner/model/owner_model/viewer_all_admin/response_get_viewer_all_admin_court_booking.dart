// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_get_viewer_all_admin_court_booking.freezed.dart';
part 'response_get_viewer_all_admin_court_booking.g.dart';

@freezed
class ResponseGetViewerAllAdminCourtBooking with _$ResponseGetViewerAllAdminCourtBooking {
  const factory ResponseGetViewerAllAdminCourtBooking({
    @Default('') @JsonKey(name: 'court_number') String courtNumber,
  }) = _ResponseGetViewerAllAdminCourtBooking;

  factory ResponseGetViewerAllAdminCourtBooking.fromJson(Map<String, dynamic> json) => _$ResponseGetViewerAllAdminCourtBookingFromJson(json);
}
