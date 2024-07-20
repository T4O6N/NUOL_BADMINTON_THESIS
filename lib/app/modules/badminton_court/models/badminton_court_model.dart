// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'badminton_court_model.freezed.dart';
part 'badminton_court_model.g.dart';

BadmintonCourtModel badmintonCourtModelFromJson(String str) => BadmintonCourtModel.fromJson(json.decode(str));

String badmintonCourtModelToJson(BadmintonCourtModel data) => json.encode(data.toJson());

@freezed
class BadmintonCourtModel with _$BadmintonCourtModel {
  const factory BadmintonCourtModel({
    @JsonKey(name: "id") @Default('') String id,
    @JsonKey(name: "created_at") @Default('') String createdAt,
    @JsonKey(name: "updated_at") @Default('') String updatedAt,
    @JsonKey(name: "court_number") @Default('') String courtNumber,
    @JsonKey(name: "court_time") @Default('') String courtTime,
    @JsonKey(name: "description") @Default('') String description,
    @JsonKey(name: "court_image") @Default('') String courtImage,
    @JsonKey(name: "available") @Default(true) bool available,
  }) = _BadmintonCourtModel;

  factory BadmintonCourtModel.fromJson(Map<String, dynamic> json) => _$BadmintonCourtModelFromJson(json);
}
