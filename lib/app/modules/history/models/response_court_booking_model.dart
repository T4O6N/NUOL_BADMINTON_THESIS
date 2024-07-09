// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_court_booking_model.freezed.dart';
part 'response_court_booking_model.g.dart';

@freezed
class ResponseCourtBookingModel with _$ResponseCourtBookingModel {
  const factory ResponseCourtBookingModel({
    @Default("") String phone,
    @JsonKey(name: 'full_name') @Default("") String fullName,
    @JsonKey(name: 'court_number') @Default("") String courtNumber,
  }) = _ResponseCourtBookingModel;

  factory ResponseCourtBookingModel.fromJson(Map<String, dynamic> json) => _$ResponseCourtBookingModelFromJson(json);
}
