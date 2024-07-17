import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'badminton_court_model.dart';

part 'fetch_badminton_courts_response_model.freezed.dart';
part 'fetch_badminton_courts_response_model.g.dart';

@freezed
class FetchBadmintonCourtsResponseModel with _$FetchBadmintonCourtsResponseModel {
  const factory FetchBadmintonCourtsResponseModel({
    @Default('') String message,
    @Default([]) List<BadmintonCourtModel> data,
  }) = _FetchBadmintonCourtsResponseModel;

  factory FetchBadmintonCourtsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchBadmintonCourtsResponseModelFromJson(json);
}
