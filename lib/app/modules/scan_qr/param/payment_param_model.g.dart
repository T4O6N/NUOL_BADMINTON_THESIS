// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_param_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentParamModelImpl _$$PaymentParamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentParamModelImpl(
      courtBookingId: json['court_booking_id'] as String? ?? '',
      courtAvailableId: json['court_available_id'] as String? ?? '',
      deviceId: json['device_id'] as String? ?? '',
      adminId: json['admin_id'] as String? ?? '',
    );

Map<String, dynamic> _$$PaymentParamModelImplToJson(
        _$PaymentParamModelImpl instance) =>
    <String, dynamic>{
      'court_booking_id': instance.courtBookingId,
      'court_available_id': instance.courtAvailableId,
      'device_id': instance.deviceId,
      'admin_id': instance.adminId,
    };
