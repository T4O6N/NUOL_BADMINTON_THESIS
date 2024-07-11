// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:nuol_badminton_thesis/app/modules/owner/model/owner/owner_model.dart';

part 'response_create_owner_model.freezed.dart';
part 'response_create_owner_model.g.dart';

ResponseCreateOwnerModel responseCreateOwnerModelFromJson(String str) => ResponseCreateOwnerModel.fromJson(json.decode(str));

String responseCreateOwnerModelToJson(ResponseCreateOwnerModel data) => json.encode(data.toJson());

@freezed
class ResponseCreateOwnerModel with _$ResponseCreateOwnerModel {
  const factory ResponseCreateOwnerModel({
    @JsonKey(name: "message") @Default("") String message,
    @JsonKey(name: "data") @Default(OwnerModel()) OwnerModel data,
    @JsonKey(name: "duration") @Default("") String duration,
    @JsonKey(name: "method") @Default("") String method,
    @JsonKey(name: "statusCode") @Default(0) int statusCode,
  }) = _ResponseCreateOwnerModel;

  factory ResponseCreateOwnerModel.fromJson(Map<String, dynamic> json) => _$ResponseCreateOwnerModelFromJson(json);
}
