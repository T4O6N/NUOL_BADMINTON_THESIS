// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'param_create_badminton_court_model.freezed.dart';
part 'param_create_badminton_court_model.g.dart';

ParamCreateBadmintonCourtModel paramCreateBadmintonCourtModelFromJson(String str) => ParamCreateBadmintonCourtModel.fromJson(json.decode(str));

String paramCreateBadmintonCourtModelToJson(ParamCreateBadmintonCourtModel data) => json.encode(data.toJson());

@freezed
class ParamCreateBadmintonCourtModel with _$ParamCreateBadmintonCourtModel {
  const factory ParamCreateBadmintonCourtModel({
    @JsonKey(name: "court_number") @Default("") String courtNumber,
    @JsonKey(name: "description") @Default("") String description,
    @JsonKey(name: "court_image") @Default([]) List<String> courtImage,
    @JsonKey(name: "available") @Default(true) bool available,
  }) = _ParamCreateBadmintonCourtModel;

  factory ParamCreateBadmintonCourtModel.fromJson(Map<String, dynamic> json) => _$ParamCreateBadmintonCourtModelFromJson(json);
}
