// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingRequestImpl _$$BookingRequestImplFromJson(Map<String, dynamic> json) =>
    _$BookingRequestImpl(
      device_id: json['device_id'] as String,
      phone: json['phone'] as String,
      full_name: json['full_name'] as String,
      court_number: json['court_number'] as String,
      payment_status: json['payment_status'] as String,
      booked_by: json['booked_by'] as String? ?? '',
      total_amount: (json['total_amount'] as num?)?.toInt() ?? 0,
      court: (json['court'] as List<dynamic>?)
              ?.map((e) => CourtDuration.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BookingRequestImplToJson(
        _$BookingRequestImpl instance) =>
    <String, dynamic>{
      'device_id': instance.device_id,
      'phone': instance.phone,
      'full_name': instance.full_name,
      'court_number': instance.court_number,
      'payment_status': instance.payment_status,
      'booked_by': instance.booked_by,
      'total_amount': instance.total_amount,
      'court': instance.court,
    };
