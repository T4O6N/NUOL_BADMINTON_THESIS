// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'day_income.freezed.dart';
part 'day_income.g.dart';

DayIncome dayIncomeFromJson(String str) => DayIncome.fromJson(json.decode(str));

String dayIncomeToJson(DayIncome data) => json.encode(data.toJson());

@freezed
class DayIncome with _$DayIncome {
  const factory DayIncome({
    @JsonKey(name: "day") @Default("") String day,
    @JsonKey(name: "income") @Default(0) int income,
  }) = _DayIncome;

  factory DayIncome.fromJson(Map<String, dynamic> json) => _$DayIncomeFromJson(json);
}
