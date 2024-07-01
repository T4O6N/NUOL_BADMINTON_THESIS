import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/response_booking_detail_model.dart';

part 'response_booking_model.freezed.dart';
part 'response_booking_model.g.dart';

ResponseBookingModel responseBookingModelFromJson(String str) => ResponseBookingModel.fromJson(json.decode(str));

String responseBookingModelToJson(ResponseBookingModel data) => json.encode(data.toJson());

@freezed
class ResponseBookingModel with _$ResponseBookingModel {
  const factory ResponseBookingModel({
    @Default('') String message,
    @Default(ResponseBookingDetailModel()) ResponseBookingDetailModel data,
    @Default('') String duration,
    @Default('') String method,
    @Default(0) int statusCode,
  }) = _ResponseBookingModel;

  factory ResponseBookingModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingModelFromJson(json);
}
