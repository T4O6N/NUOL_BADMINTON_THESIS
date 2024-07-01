// To parse this JSON data, do
//
//     final createBookingCourtDurationTimeParam = createBookingCourtDurationTimeParamFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'create_booking_court_duration_time_param.freezed.dart';
part 'create_booking_court_duration_time_param.g.dart';

CreateBookingCourtDurationTimeParam createBookingCourtDurationTimeParamFromJson(String str) => CreateBookingCourtDurationTimeParam.fromJson(json.decode(str));

String createBookingCourtDurationTimeParamToJson(CreateBookingCourtDurationTimeParam data) => json.encode(data.toJson());

@freezed
class CreateBookingCourtDurationTimeParam with _$CreateBookingCourtDurationTimeParam {
  const factory CreateBookingCourtDurationTimeParam({
    @Default('') String courtNumber,
    @Default(0) int courtPrice,
    @Default('') String date,
    @Default([]) List<String> durationTime,
  }) = _CreateBookingCourtDurationTimeParam;

  factory CreateBookingCourtDurationTimeParam.fromJson(Map<String, dynamic> json) => _$CreateBookingCourtDurationTimeParamFromJson(json);
}
