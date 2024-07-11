// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_model.freezed.dart';
part 'owner_model.g.dart';

@freezed
class OwnerModel with _$OwnerModel {
  const factory OwnerModel({
    @Default('') String id,
    @Default(false) @JsonKey(name: 'is_active') bool isActive,
    @Default('') String username,
    @Default('') String phone,
    @Default('') String password,
    @Default('') @JsonKey(name: 'created_at') String createdAt,
    @Default('') @JsonKey(name: 'updated_at') String updatedAt,
  }) = _OwnerModel;

  factory OwnerModel.fromJson(Map<String, dynamic> json) => _$OwnerModelFromJson(json);

  // Method to exclude id, createdAt, and updatedAt
}
