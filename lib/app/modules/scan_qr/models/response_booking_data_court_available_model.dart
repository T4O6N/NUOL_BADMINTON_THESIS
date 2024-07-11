// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_booking_data_court_available_model.freezed.dart';
part 'response_booking_data_court_available_model.g.dart';

@freezed
class ResponseBookingDataCourtAvailableModel with _$ResponseBookingDataCourtAvailableModel {
  const factory ResponseBookingDataCourtAvailableModel({
    @Default("") String id,
    @JsonKey(name: 'court_booking_id') @Default("") String courtBookingId,
    @JsonKey(name: 'created_at') @Default("") String createdAt,
    @JsonKey(name: 'updated_at') @Default("") String updatedAt,
    @Default(0) int totalAllCourtAvailable,
    @Default(false) bool isExpiredAll,
    @JsonKey(name: 'all_total_amount') @Default(0) int allTotalAmount,
    @Default("") String date,
    @JsonKey(name: 'duration_time') @Default([]) List<String> durationTime,
  }) = _ResponseBookingDataCourtAvailableModel;

  factory ResponseBookingDataCourtAvailableModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingDataCourtAvailableModelFromJson(json);
}
