// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:nuol_badminton_thesis/app/modules/badminton_court/models/badminton_court_model.dart';

part 'fetch_badminton_courts_response_model.freezed.dart';
part 'fetch_badminton_courts_response_model.g.dart';

FetchBadmintonCourtsResponseModel fetchBadmintonCourtsResponseModelFromJson(String str) => FetchBadmintonCourtsResponseModel.fromJson(json.decode(str));

String fetchBadmintonCourtsResponseModelToJson(FetchBadmintonCourtsResponseModel data) => json.encode(data.toJson());

@freezed
class FetchBadmintonCourtsResponseModel with _$FetchBadmintonCourtsResponseModel {
  const factory FetchBadmintonCourtsResponseModel({
    @JsonKey(name: "message") @Default('') String message,
    @JsonKey(name: "data") @Default([]) List<BadmintonCourtModel> data,
    @JsonKey(name: "duration") @Default('') String duration,
    @JsonKey(name: "method") @Default('') String method,
    @JsonKey(name: "statusCode") @Default(0) int statusCode,
  }) = _FetchBadmintonCourtsResponseModel;

  factory FetchBadmintonCourtsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchBadmintonCourtsResponseModelFromJson(json);
}
