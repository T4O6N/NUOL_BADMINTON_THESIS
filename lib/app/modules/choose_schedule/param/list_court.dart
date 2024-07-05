// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_court.freezed.dart';
part 'list_court.g.dart';

@freezed
class ListCourt with _$ListCourt {
  const factory ListCourt({
    @JsonKey(name: 'date') required String date,
    @JsonKey(name: 'duration_time') required List<String> durationTime,
  }) = _ListCourt;

  factory ListCourt.fromJson(Map<String, dynamic> json) => _$ListCourtFromJson(json);
}
