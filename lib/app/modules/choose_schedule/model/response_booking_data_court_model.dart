// To parse this JSON data, do
//
//     final responseBookingDataCourtModel = responseBookingDataCourtModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_booking_data_court_model.freezed.dart';
part 'response_booking_data_court_model.g.dart';

ResponseBookingDataCourtModel responseBookingDataCourtModelFromJson(String str) => ResponseBookingDataCourtModel.fromJson(json.decode(str));

String responseBookingDataCourtModelToJson(ResponseBookingDataCourtModel data) => json.encode(data.toJson());

@freezed
class ResponseBookingDataCourtModel with _$ResponseBookingDataCourtModel {
  const factory ResponseBookingDataCourtModel({
    @Default("") String id,
    @Default("") String courtBookingId,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default("") String date,
    @Default(true) bool available,
    @Default([]) List<String> durationTime,
  }) = _ResponseBookingDataCourtModel;

  factory ResponseBookingDataCourtModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingDataCourtModelFromJson(json);
}
