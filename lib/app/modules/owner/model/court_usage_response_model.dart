import 'package:freezed_annotation/freezed_annotation.dart';
import 'court_usage_model.dart';

part 'court_usage_response_model.freezed.dart';
part 'court_usage_response_model.g.dart';

@freezed
class CourtUsageResponseModel with _$CourtUsageResponseModel {
  const factory CourtUsageResponseModel({
    @Default('') String message,
    @Default([]) List<CourtUsageModel> data,
    @Default('') String duration,
    @Default('') String method,
    @Default(0) int statusCode,
  }) = _CourtUsageResponseModel;

  factory CourtUsageResponseModel.fromJson(Map<String, dynamic> json) => _$CourtUsageResponseModelFromJson(json);
}
