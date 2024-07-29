// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_daily_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingDailyHistoryModelImpl
    _$$ResponseBookingDailyHistoryModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ResponseBookingDailyHistoryModelImpl(
          message: json['message'] as String? ?? '',
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => ResponseBookingDailyHistoryDataModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
          duration: json['duration'] as String? ?? '',
          method: json['method'] as String? ?? '',
          statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
        );

Map<String, dynamic> _$$ResponseBookingDailyHistoryModelImplToJson(
        _$ResponseBookingDailyHistoryModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
