// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'court_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourtBookingImpl _$$CourtBookingImplFromJson(Map<String, dynamic> json) =>
    _$CourtBookingImpl(
      id: json['id'] as String,
      device_id: json['device_id'] as String,
      phone: json['phone'] as String,
      full_name: json['full_name'] as String,
      court_number: json['court_number'] as String,
      payment_status: json['payment_status'] as String,
      total_amount: (json['total_amount'] as num?)?.toInt() ?? 0,
      booked_by: json['booked_by'] as String? ?? '',
      expiredTime: json['expiredTime'] as String,
      bookingDate: json['bookingDate'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$$CourtBookingImplToJson(_$CourtBookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_id': instance.device_id,
      'phone': instance.phone,
      'full_name': instance.full_name,
      'court_number': instance.court_number,
      'payment_status': instance.payment_status,
      'total_amount': instance.total_amount,
      'booked_by': instance.booked_by,
      'expiredTime': instance.expiredTime,
      'bookingDate': instance.bookingDate,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
