// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'weekly_income_model.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel {
  const factory DataModel({
    @JsonKey(name: "weeklyIncome") @Default([]) List<WeeklyIncomeModel> weeklyIncome,
    @JsonKey(name: "totalWeeklyIncome") @Default(0) int totalWeeklyIncome,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}
