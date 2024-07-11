// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'data_model.dart';

part 'weekly_income_response_model.freezed.dart';
part 'weekly_income_response_model.g.dart';

@freezed
class WeeklyIncomeResponseModel with _$WeeklyIncomeResponseModel {
  const factory WeeklyIncomeResponseModel({
    @JsonKey(name: "message") @Default('') String message,
    @Default(DataModel()) @JsonKey(name: "data") DataModel data,
    @Default('') @JsonKey(name: "duration") String duration,
    @Default('') @JsonKey(name: "method") String method,
    @Default(0) @JsonKey(name: "statusCode") int statusCode,
  }) = _WeeklyIncomeResponseModel;

  factory WeeklyIncomeResponseModel.fromJson(Map<String, dynamic> json) => _$WeeklyIncomeResponseModelFromJson(json);
}
