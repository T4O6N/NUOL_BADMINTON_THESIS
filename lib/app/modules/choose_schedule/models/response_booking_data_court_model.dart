// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_booking_data_court_model.freezed.dart';
part 'response_booking_data_court_model.g.dart';

@freezed
class ResponseBookingDataCourtModel with _$ResponseBookingDataCourtModel {
  const factory ResponseBookingDataCourtModel({
    @Default("") String id,
    @JsonKey(name: 'court_booking_id') @Default("") String courtBookingId,
    @JsonKey(name: 'created_at') @Default("") String createdAt,
    @JsonKey(name: 'updated_at') @Default("") String updatedAt,
    @Default("") String date,
    @Default(true) bool available,
    @JsonKey(name: 'duration_time') @Default([]) List<String> durationTime,
  }) = _ResponseBookingDataCourtModel;

  factory ResponseBookingDataCourtModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingDataCourtModelFromJson(json);
}
