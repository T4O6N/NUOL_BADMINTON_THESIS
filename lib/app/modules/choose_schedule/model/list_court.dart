import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_court.freezed.dart';
part 'list_court.g.dart';

ListCourt listCourtFromJson(String str) => ListCourt.fromJson(json.decode(str));

String listCourtToJson(ListCourt data) => json.encode(data.toJson());

@freezed
class ListCourt with _$ListCourt {
  const factory ListCourt({
    @Default('') @JsonKey(name: 'date') String date,
    @Default([]) @JsonKey(name: 'duration_time') List<String> durationTime,
  }) = _ListCourt;

  factory ListCourt.fromJson(Map<String, dynamic> json) => _$ListCourtFromJson(json);
}
