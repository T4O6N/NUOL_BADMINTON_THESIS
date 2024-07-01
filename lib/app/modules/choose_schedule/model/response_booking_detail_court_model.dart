// To parse this JSON data, do
//
//     final responseBookingDetailCourtModel = responseBookingDetailCourtModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'response_booking_detail_court_model.freezed.dart';
part 'response_booking_detail_court_model.g.dart';

ResponseBookingDetailCourtModel responseBookingDetailCourtModelFromJson(String str) => ResponseBookingDetailCourtModel.fromJson(json.decode(str));

String responseBookingDetailCourtModelToJson(ResponseBookingDetailCourtModel data) => json.encode(data.toJson());

@freezed
class ResponseBookingDetailCourtModel with _$ResponseBookingDetailCourtModel {
  const factory ResponseBookingDetailCourtModel({
    @Default('') String id,
    @Default('') String courtBookingId,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default('') String courtNumber,
    @Default(0) int courtPrice,
    @Default('') String date,
    @Default(true) bool available,
    @Default([]) List<String> durationTime,
  }) = _ResponseBookingDetailCourtModel;

  factory ResponseBookingDetailCourtModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingDetailCourtModelFromJson(json);
}
