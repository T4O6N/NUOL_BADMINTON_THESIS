// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_param_model.freezed.dart';
part 'payment_param_model.g.dart';

@freezed
class PaymentParamModel with _$PaymentParamModel {
  const factory PaymentParamModel({
    @JsonKey(name: 'court_booking_id') required String courtBookingId,
    @JsonKey(name: 'device_id') required String deviceId,
  }) = _PaymentParamModel;

  factory PaymentParamModel.fromJson(Map<String, dynamic> json) => _$PaymentParamModelFromJson(json);
}
