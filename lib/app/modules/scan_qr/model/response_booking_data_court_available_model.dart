// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_booking_data_court_available_model.freezed.dart';
part 'response_booking_data_court_available_model.g.dart';

@freezed
class ResponseBookingDataCourtAvailableModel with _$ResponseBookingDataCourtAvailableModel {
  const factory ResponseBookingDataCourtAvailableModel({
    @Default("") String date,
    @JsonKey(name: 'duration_time') @Default([]) List<String> durationTime,
    @JsonKey(name: 'total_amount') @Default(0) int totalAmount,
    @JsonKey(name: 'status_message') @Default([]) List<String> statusMessage,
  }) = _ResponseBookingDataCourtAvailableModel;

  factory ResponseBookingDataCourtAvailableModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingDataCourtAvailableModelFromJson(json);
}
