// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_booking_data_court_model.freezed.dart';
part 'response_booking_data_court_model.g.dart';

@freezed
class ResponseBookingDataCourtModel with _$ResponseBookingDataCourtModel {
  const factory ResponseBookingDataCourtModel({
    @Default("") String date,
    @JsonKey(name: 'duration_time') @Default([]) List<String> durationTime,
    @Default(true) bool available,
  }) = _ResponseBookingDataCourtModel;

  factory ResponseBookingDataCourtModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingDataCourtModelFromJson(json);
}
