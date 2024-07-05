// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingHistoryModelImpl _$$ResponseBookingHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseBookingHistoryModelImpl(
      message: json['message'] as String? ?? "",
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ResponseBookingHistoryDataModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      duration: json['duration'] as String? ?? "",
      method: json['method'] as String? ?? "",
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ResponseBookingHistoryModelImplToJson(
        _$ResponseBookingHistoryModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
