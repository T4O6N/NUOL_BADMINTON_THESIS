// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_daily_income_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDailyIncomeReportImpl _$$ResponseDailyIncomeReportImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDailyIncomeReportImpl(
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const DailyIncomeData()
          : DailyIncomeData.fromJson(json['data'] as Map<String, dynamic>),
      duration: json['duration'] as String? ?? '',
      method: json['method'] as String? ?? '',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ResponseDailyIncomeReportImplToJson(
        _$ResponseDailyIncomeReportImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
