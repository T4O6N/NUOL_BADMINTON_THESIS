// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/list_court.dart';

part 'create_booking_court_param.freezed.dart';
part 'create_booking_court_param.g.dart';

CreateBookingCourtParam createBookingCourtParamFromJson(String str) => CreateBookingCourtParam.fromJson(json.decode(str));

String createBookingCourtParamToJson(CreateBookingCourtParam data) => json.encode(data.toJson());

@freezed
class CreateBookingCourtParam with _$CreateBookingCourtParam {
  const factory CreateBookingCourtParam({
    @Default('') @JsonKey(name: 'device_id') String deviceId,
    @Default('') @JsonKey(name: 'phone') String phone,
    @Default('') @JsonKey(name: 'full_name') String fullName,
    @Default('') @JsonKey(name: 'court_number') String courtNumber,
    @Default('') @JsonKey(name: 'payment_status') String paymentStatus,
    @Default('') @JsonKey(name: 'booked_by') String bookedBy,
    @Default(0) @JsonKey(name: 'total_amount') int totalAmount,
    @Default([]) List<ListCourt> court,
  }) = _CreateBookingCourtParam;

  factory CreateBookingCourtParam.fromJson(Map<String, dynamic> json) => _$CreateBookingCourtParamFromJson(json);
}
