import 'package:freezed_annotation/freezed_annotation.dart';

part 'court_response.freezed.dart';
part 'court_response.g.dart';

@freezed
class CourtResponse with _$CourtResponse {
  factory CourtResponse({
    required String id,
    required String courtBookingId,
    required String created_at,
    required String updated_at,
    required String date,
    @Default(true) bool available,
    @Default([]) List<String> duration_time,
  }) = _CourtResponse;

  factory CourtResponse.fromJson(Map<String, dynamic> json) => _$CourtResponseFromJson(json);
}
