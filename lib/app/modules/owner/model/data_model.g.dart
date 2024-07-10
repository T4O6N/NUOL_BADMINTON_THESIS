// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      weeklyIncome: (json['weeklyIncome'] as List<dynamic>?)
              ?.map(
                  (e) => WeeklyIncomeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalWeeklyIncome: (json['totalWeeklyIncome'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'weeklyIncome': instance.weeklyIncome,
      'totalWeeklyIncome': instance.totalWeeklyIncome,
    };
