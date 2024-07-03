import 'package:freezed_annotation/freezed_annotation.dart';

part 'court_duration.freezed.dart';
part 'court_duration.g.dart';

@freezed
class CourtDuration with _$CourtDuration {
  factory CourtDuration({
    required String date,
    @Default([]) List<String> duration_time,
  }) = _CourtDuration;

  factory CourtDuration.fromJson(Map<String, dynamic> json) => _$CourtDurationFromJson(json);
}
