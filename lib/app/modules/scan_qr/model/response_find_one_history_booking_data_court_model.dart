// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_find_one_history_booking_data_court_model.freezed.dart';
part 'response_find_one_history_booking_data_court_model.g.dart';

@freezed
class ResponseFindOneHistoryBookingDataCourtModel with _$ResponseFindOneHistoryBookingDataCourtModel {
  const factory ResponseFindOneHistoryBookingDataCourtModel({
    @Default("") String id,
    @JsonKey(name: 'court_booking_id') @Default("") String courtBookingId,
    @JsonKey(name: 'created_at') @Default("") String createdAt,
    @JsonKey(name: 'updated_at') @Default("") String updatedAt,
    @Default("") String date,
    @JsonKey(name: 'duration_time') @Default([]) List<String> durationTime,
    @Default(true) bool available,
  }) = _ResponseFindOneHistoryBookingDataCourtModel;

  factory ResponseFindOneHistoryBookingDataCourtModel.fromJson(Map<String, dynamic> json) => _$ResponseFindOneHistoryBookingDataCourtModelFromJson(json);
}
