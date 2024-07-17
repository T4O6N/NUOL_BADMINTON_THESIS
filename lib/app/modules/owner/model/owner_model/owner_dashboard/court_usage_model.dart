// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'court_usage_model.freezed.dart';
part 'court_usage_model.g.dart';

@freezed
class CourtUsageModel with _$CourtUsageModel {
  const factory CourtUsageModel({
    // @JsonKey(name: 'court_number') @Default('') String courtNumber,
    // @JsonKey(name: 'booking_count') @Default(0) int bookingCount,
    @JsonKey(name: "id") @Default('') String id,
    @JsonKey(name: "court_used") @Default('') String courtUsed,
    @JsonKey(name: "booking_count") @Default(0) int bookingCount,
    @JsonKey(name: "created_at") @Default('') String createdAt,
    @JsonKey(name: "updated_at") @Default('') String updatedAt,
  }) = _CourtUsageModel;

  factory CourtUsageModel.fromJson(Map<String, dynamic> json) => _$CourtUsageModelFromJson(json);
}
