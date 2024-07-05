// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_booking_data_model.dart';

part 'response_booking_item_model.freezed.dart';
part 'response_booking_item_model.g.dart';

@freezed
class ResponseBookingItemModel with _$ResponseBookingItemModel {
  const factory ResponseBookingItemModel({
    @Default("") String id,
    @JsonKey(name: 'created_at') @Default("") String createdAt,
    @JsonKey(name: 'updated_at') @Default("") String updatedAt,
    @JsonKey(name: 'device_id') @Default("") String deviceId,
    @JsonKey(name: 'court_booking_id') @Default("") String courtBookingId,
    @JsonKey(name: 'court_booking') required ResponseBookingDataModel courtBooking,
  }) = _ResponseBookingItemModel;

  factory ResponseBookingItemModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingItemModelFromJson(json);
}
