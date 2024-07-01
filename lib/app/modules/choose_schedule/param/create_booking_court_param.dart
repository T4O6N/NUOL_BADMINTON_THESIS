import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:nuol_badminton_thesis/app/modules/choose_schedule/param/create_booking_court_duration_time_param.dart';

part 'create_booking_court_param.freezed.dart';
part 'create_booking_court_param.g.dart';

CreateBookingCourtParam createBookingCourtParamFromJson(String str) => CreateBookingCourtParam.fromJson(json.decode(str));

String createBookingCourtParamToJson(CreateBookingCourtParam data) => json.encode(data.toJson());

@freezed
class CreateBookingCourtParam with _$CreateBookingCourtParam {
  const factory CreateBookingCourtParam({
    @Default('') String deviceId,
    @Default('') String phone,
    @Default('') String fullName,
    @Default('') String paymentStatus,
    @Default('') String bookedBy,
    @Default(0) int totalAmount,
    @Default([]) List<CreateBookingCourtDurationTimeParam> court,
  }) = _CreateBookingCourtParam;

  factory CreateBookingCourtParam.fromJson(Map<String, dynamic> json) => _$CreateBookingCourtParamFromJson(json);
}
