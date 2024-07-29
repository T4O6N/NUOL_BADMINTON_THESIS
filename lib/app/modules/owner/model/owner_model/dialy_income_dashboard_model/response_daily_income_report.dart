import 'package:freezed_annotation/freezed_annotation.dart';
import 'daily_income_data.dart';

part 'response_daily_income_report.freezed.dart';
part 'response_daily_income_report.g.dart';

@freezed
class ResponseDailyIncomeReport with _$ResponseDailyIncomeReport {
  const factory ResponseDailyIncomeReport({
    @Default('') String message,
    @Default(DailyIncomeData()) DailyIncomeData data,
    @Default('') String duration,
    @Default('') String method,
    @Default(0) int statusCode,
  }) = _ResponseDailyIncomeReport;

  factory ResponseDailyIncomeReport.fromJson(Map<String, dynamic> json) => _$ResponseDailyIncomeReportFromJson(json);
}
