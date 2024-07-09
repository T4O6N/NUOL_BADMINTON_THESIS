// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_court_booking_model.dart';

part 'response_booking_payment_model.freezed.dart';
part 'response_booking_payment_model.g.dart';

@freezed
class ResponseBookingPaymentModel with _$ResponseBookingPaymentModel {
  const factory ResponseBookingPaymentModel({
    @JsonKey(name: 'date') @Default("") String date,
    @JsonKey(name: 'payment_time') @Default("") String paymentTime,
    @JsonKey(name: 'court_booking') @Default(ResponseCourtBookingModel()) ResponseCourtBookingModel courtBooking,
  }) = _ResponseBookingPaymentModel;

  factory ResponseBookingPaymentModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingPaymentModelFromJson(json);
}
