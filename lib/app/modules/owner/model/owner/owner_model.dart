import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_model.freezed.dart';
part 'owner_model.g.dart';

@freezed
class OwnerModel with _$OwnerModel {
  const factory OwnerModel({
    @Default('') String id,
    @Default('') String username,
    @Default('') String phone,
    @Default('') String password,
    @Default(true) bool isActive,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _OwnerModel;

  factory OwnerModel.fromJson(Map<String, dynamic> json) => _$OwnerModelFromJson(json);
}
