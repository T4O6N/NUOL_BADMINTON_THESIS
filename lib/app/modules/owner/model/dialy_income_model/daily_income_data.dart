import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_income_data.freezed.dart';
part 'daily_income_data.g.dart';

@freezed
class DailyIncomeData with _$DailyIncomeData {
  const factory DailyIncomeData({
    @Default("") String day,
    @JsonKey(name: "daily_income") @Default(0) int dailyIncome,
  }) = _DailyIncomeData;

  factory DailyIncomeData.fromJson(Map<String, dynamic> json) =>
      _$DailyIncomeDataFromJson(json);
}
