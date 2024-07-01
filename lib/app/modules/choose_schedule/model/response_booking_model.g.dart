// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingModelImpl _$$ResponseBookingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseBookingModelImpl(
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const ResponseBookingDetailModel()
          : ResponseBookingDetailModel.fromJson(
              json['data'] as Map<String, dynamic>),
      duration: json['duration'] as String? ?? '',
      method: json['method'] as String? ?? '',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ResponseBookingModelImplToJson(
        _$ResponseBookingModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
