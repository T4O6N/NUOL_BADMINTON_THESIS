import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/response_booking_detail_court_model.dart';

part 'response_booking_detail_model.freezed.dart';
part 'response_booking_detail_model.g.dart';

ResponseBookingDetailModel responseBookingDetailModelFromJson(String str) => ResponseBookingDetailModel.fromJson(json.decode(str));

String responseBookingDetailModelToJson(ResponseBookingDetailModel data) => json.encode(data.toJson());

@freezed
class ResponseBookingDetailModel with _$ResponseBookingDetailModel {
  const factory ResponseBookingDetailModel({
    @Default('') String id,
    @Default('') String deviceId,
    @Default('') String phone,
    @Default('') String fullName,
    @Default('') String paymentStatus,
    @Default('') String expiredTime,
    @Default('') String bookedBy,
    @Default(0) int totalAmount,
    @Default('') String bookingDate,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default([]) List<ResponseBookingDetailCourtModel> court,
  }) = _ResponseBookingDetailModel;

  factory ResponseBookingDetailModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingDetailModelFromJson(json);
}
