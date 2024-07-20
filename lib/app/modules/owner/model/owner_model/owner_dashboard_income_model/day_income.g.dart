// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_income.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayIncomeImpl _$$DayIncomeImplFromJson(Map<String, dynamic> json) =>
    _$DayIncomeImpl(
      day: json['day'] as String? ?? "",
      income: (json['income'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DayIncomeImplToJson(_$DayIncomeImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'income': instance.income,
    };
