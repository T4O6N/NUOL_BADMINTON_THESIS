// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/owner_dashboard_income_model/day_income.dart';

part 'weekly_income_data.freezed.dart';
part 'weekly_income_data.g.dart';

WeeklyIncomeData weeklyIncomeDataFromJson(String str) => WeeklyIncomeData.fromJson(json.decode(str));

String weeklyIncomeDataToJson(WeeklyIncomeData data) => json.encode(data.toJson());

@freezed
class WeeklyIncomeData with _$WeeklyIncomeData {
  const factory WeeklyIncomeData({
    @JsonKey(name: "days") @Default([]) List<DayIncome> days,
    @JsonKey(name: "totalWeeklyIncome") @Default(0) int totalWeeklyIncome,
  }) = _WeeklyIncomeData;

  factory WeeklyIncomeData.fromJson(Map<String, dynamic> json) => _$WeeklyIncomeDataFromJson(json);
}
