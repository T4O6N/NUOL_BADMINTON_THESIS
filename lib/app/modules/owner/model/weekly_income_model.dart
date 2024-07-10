// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weekly_income_model.freezed.dart';
part 'weekly_income_model.g.dart';

@freezed
class WeeklyIncomeModel with _$WeeklyIncomeModel {
  const factory WeeklyIncomeModel({
    @Default('') @JsonKey(name: "day") String day,
    @Default(0) @JsonKey(name: "income_amount") int incomeAmount,
  }) = _WeeklyIncomeModel;

  factory WeeklyIncomeModel.fromJson(Map<String, dynamic> json) => _$WeeklyIncomeModelFromJson(json);
}
