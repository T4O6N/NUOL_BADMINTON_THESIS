// To parse this JSON data, do
//
//     final paramCreateOwnerModel = paramCreateOwnerModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'param_create_owner_model.freezed.dart';
part 'param_create_owner_model.g.dart';

ParamCreateOwnerModel paramCreateOwnerModelFromJson(String str) => ParamCreateOwnerModel.fromJson(json.decode(str));

String paramCreateOwnerModelToJson(ParamCreateOwnerModel data) => json.encode(data.toJson());

@freezed
class ParamCreateOwnerModel with _$ParamCreateOwnerModel {
  const factory ParamCreateOwnerModel({
    @JsonKey(name: "username") @Default("") String username,
    @JsonKey(name: "phone") @Default("") String phone,
    @JsonKey(name: "password") @Default("") String password,
  }) = _ParamCreateOwnerModel;

  factory ParamCreateOwnerModel.fromJson(Map<String, dynamic> json) => _$ParamCreateOwnerModelFromJson(json);
}
