// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/owner_dashboard_income_model/weekly_income_data.dart';

part 'weekly_income_response.freezed.dart';
part 'weekly_income_response.g.dart';

WeeklyIncomeResponse weeklyIncomeResponseFromJson(String str) => WeeklyIncomeResponse.fromJson(json.decode(str));

String weeklyIncomeResponseToJson(WeeklyIncomeResponse data) => json.encode(data.toJson());

@freezed
class WeeklyIncomeResponse with _$WeeklyIncomeResponse {
  const factory WeeklyIncomeResponse({
    @JsonKey(name: "message") @Default('') String message,
    @JsonKey(name: "data") @Default(WeeklyIncomeData()) WeeklyIncomeData data,
    @JsonKey(name: "duration") @Default('') String duration,
    @JsonKey(name: "method") @Default('') String method,
    @JsonKey(name: "statusCode") @Default(0) int statusCode,
  }) = _WeeklyIncomeResponse;

  factory WeeklyIncomeResponse.fromJson(Map<String, dynamic> json) => _$WeeklyIncomeResponseFromJson(json);
}
