import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuol_badminton_thesis/app/modules/booking/model/booking_history.dart';
part 'history_response.freezed.dart';
part 'history_response.g.dart';

@freezed
class HistoryResponse with _$HistoryResponse {
  factory HistoryResponse({
    required String message,
    required List<BookingHistory> data,
    required String duration,
    required String method,
    required int statusCode,
  }) = _HistoryResponse;

  factory HistoryResponse.fromJson(Map<String, dynamic> json) => _$HistoryResponseFromJson(json);
}
