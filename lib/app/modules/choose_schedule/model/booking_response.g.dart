// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingResponseImpl _$$BookingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingResponseImpl(
      message: json['message'] as String,
      data: BookingData.fromJson(json['data'] as Map<String, dynamic>),
      duration: json['duration'] as String,
      method: json['method'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
    );

Map<String, dynamic> _$$BookingResponseImplToJson(
        _$BookingResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
