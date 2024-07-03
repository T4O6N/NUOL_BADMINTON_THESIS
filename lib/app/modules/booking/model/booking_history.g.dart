// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingHistoryImpl _$$BookingHistoryImplFromJson(Map<String, dynamic> json) =>
    _$BookingHistoryImpl(
      id: json['id'] as String,
      device_id: json['device_id'] as String,
      courtBookingId: json['courtBookingId'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      courtBooking:
          CourtBooking.fromJson(json['courtBooking'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingHistoryImplToJson(
        _$BookingHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_id': instance.device_id,
      'courtBookingId': instance.courtBookingId,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'courtBooking': instance.courtBooking,
    };
