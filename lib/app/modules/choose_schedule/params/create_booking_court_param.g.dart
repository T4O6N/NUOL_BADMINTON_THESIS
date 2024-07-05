// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_booking_court_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBookingCourtParamImpl _$$CreateBookingCourtParamImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBookingCourtParamImpl(
      deviceId: json['device_id'] as String,
      phone: json['phone'] as String,
      fullName: json['full_name'] as String,
      courtNumber: json['court_number'] as String,
      paymentStatus: json['payment_status'] as String,
      bookedBy: json['booked_by'] as String,
      totalAmount: (json['total_amount'] as num).toInt(),
      court: (json['court'] as List<dynamic>)
          .map((e) => ListCourt.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateBookingCourtParamImplToJson(
        _$CreateBookingCourtParamImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'phone': instance.phone,
      'full_name': instance.fullName,
      'court_number': instance.courtNumber,
      'payment_status': instance.paymentStatus,
      'booked_by': instance.bookedBy,
      'total_amount': instance.totalAmount,
      'court': instance.court,
    };
