import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/response_booking_data_court_model.dart';

part 'response_booking_data_model.freezed.dart';
part 'response_booking_data_model.g.dart';

ResponseBookingDataModel responseBookingDataModelFromJson(String str) => ResponseBookingDataModel.fromJson(json.decode(str));

String responseBookingDataModelToJson(ResponseBookingDataModel data) => json.encode(data.toJson());

@freezed
class ResponseBookingDataModel with _$ResponseBookingDataModel {
  const factory ResponseBookingDataModel({
    @Default("") String id,
    @Default("") String deviceId,
    @Default("") String phone,
    @Default("") String fullName,
    @Default("") String courtNumber,
    @Default("") String paymentStatus,
    @Default(0) int totalAmount,
    @Default("") String bookedBy,
    @Default("") String expiredTime,
    @Default("") String bookingDate,
    @Default("") String createdAt,
    @Default("") String updatedAt,
    @Default([]) List<ResponseBookingDataCourtModel> court,
  }) = _ResponseBookingDataModel;

  factory ResponseBookingDataModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingDataModelFromJson(json);
}
