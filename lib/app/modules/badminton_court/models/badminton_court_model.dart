// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'badminton_court_model.freezed.dart';
part 'badminton_court_model.g.dart';

@freezed
class BadmintonCourtModel with _$BadmintonCourtModel {
  const factory BadmintonCourtModel({
    @Default('') String id,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'updated_at') @Default('') String updatedAt,
    @JsonKey(name: 'court_number') @Default('') String courtNumber,
    @JsonKey(name: 'court_time') String? courtTime,
    @Default('') String description,
    @Default([]) List<String> courtImage,
    @Default(true) bool available,
  }) = _BadmintonCourtModel;

  factory BadmintonCourtModel.fromJson(Map<String, dynamic> json) => _$BadmintonCourtModelFromJson(json);
}
