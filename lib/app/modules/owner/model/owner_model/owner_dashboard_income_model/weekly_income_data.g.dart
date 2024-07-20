// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_income_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyIncomeDataImpl _$$WeeklyIncomeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyIncomeDataImpl(
      days: (json['days'] as List<dynamic>?)
              ?.map((e) => DayIncome.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalWeeklyIncome: (json['totalWeeklyIncome'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WeeklyIncomeDataImplToJson(
        _$WeeklyIncomeDataImpl instance) =>
    <String, dynamic>{
      'days': instance.days,
      'totalWeeklyIncome': instance.totalWeeklyIncome,
    };
