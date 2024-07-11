// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_income_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyIncomeModelImpl _$$WeeklyIncomeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyIncomeModelImpl(
      day: json['day'] as String? ?? '',
      incomeAmount: (json['income_amount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WeeklyIncomeModelImplToJson(
        _$WeeklyIncomeModelImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'income_amount': instance.incomeAmount,
    };
