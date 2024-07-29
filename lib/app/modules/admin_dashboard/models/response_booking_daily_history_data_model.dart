// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_booking_daily_history_booking_model.dart';

part 'response_booking_daily_history_data_model.freezed.dart';
part 'response_booking_daily_history_data_model.g.dart';

@freezed
class ResponseBookingDailyHistoryDataModel with _$ResponseBookingDailyHistoryDataModel {
  const factory ResponseBookingDailyHistoryDataModel({
    @Default('') String id,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'updated_at') @Default('') String updatedAt,
    @JsonKey(name: 'device_id') @Default('') String deviceId,
    @JsonKey(name: 'court_booking_id') @Default('') String courtBookingId,
    @JsonKey(name: 'court_booking') @Default(ResponseBookingDailyHistoryBookingModel()) ResponseBookingDailyHistoryBookingModel courtBooking,
  }) = _ResponseBookingDailyHistoryDataModel;

  factory ResponseBookingDailyHistoryDataModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingDailyHistoryDataModelFromJson(json);
}
