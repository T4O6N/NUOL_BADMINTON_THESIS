// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_income_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyIncomeDataImpl _$$DailyIncomeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyIncomeDataImpl(
      day: json['day'] as String? ?? "",
      dailyIncome: (json['daily_income'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DailyIncomeDataImplToJson(
        _$DailyIncomeDataImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'daily_income': instance.dailyIncome,
    };
