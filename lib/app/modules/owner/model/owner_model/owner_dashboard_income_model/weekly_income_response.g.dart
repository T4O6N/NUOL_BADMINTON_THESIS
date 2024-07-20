// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_income_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyIncomeResponseImpl _$$WeeklyIncomeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyIncomeResponseImpl(
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const WeeklyIncomeData()
          : WeeklyIncomeData.fromJson(json['data'] as Map<String, dynamic>),
      duration: json['duration'] as String? ?? '',
      method: json['method'] as String? ?? '',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WeeklyIncomeResponseImplToJson(
        _$WeeklyIncomeResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
