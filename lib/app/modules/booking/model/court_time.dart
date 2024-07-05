import 'package:freezed_annotation/freezed_annotation.dart';

part 'court_time.freezed.dart';
part 'court_time.g.dart';

@freezed
class CourtTime with _$CourtTime {
  const factory CourtTime({
    @Default("") String date,
    @Default([]) List<String> duration_time,
    @Default(true) available,
  }) = _CourtTime;

  factory CourtTime.fromJson(Map<String, dynamic> json) => _$CourtTimeFromJson(json);
}
