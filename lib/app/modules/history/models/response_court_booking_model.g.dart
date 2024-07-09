// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_court_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCourtBookingModelImpl _$$ResponseCourtBookingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCourtBookingModelImpl(
      phone: json['phone'] as String? ?? "",
      fullName: json['full_name'] as String? ?? "",
      courtNumber: json['court_number'] as String? ?? "",
    );

Map<String, dynamic> _$$ResponseCourtBookingModelImplToJson(
        _$ResponseCourtBookingModelImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'full_name': instance.fullName,
      'court_number': instance.courtNumber,
    };
