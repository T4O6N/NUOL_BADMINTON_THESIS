// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_income_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyIncomeResponseModelImpl _$$WeeklyIncomeResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyIncomeResponseModelImpl(
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const DataModel()
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      duration: json['duration'] as String? ?? '',
      method: json['method'] as String? ?? '',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WeeklyIncomeResponseModelImplToJson(
        _$WeeklyIncomeResponseModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
