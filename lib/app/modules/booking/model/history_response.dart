import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuol_badminton_thesis/app/modules/booking/model/booking_history.dart';
part 'history_response.freezed.dart';
part 'history_response.g.dart';

HistoryResponse historyResponseFromJson(String str) => HistoryResponse.fromJson(json.decode(str));

String historyResponseToJson(HistoryResponse data) => json.encode(data.toJson());

@freezed
class HistoryResponse with _$HistoryResponse {
  factory HistoryResponse({
    @Default('') String message,
    @Default([]) List<BookingHistory> data,
    @Default('') String duration,
    @Default('') String method,
    @Default(0) int statusCode,
  }) = _HistoryResponse;

  factory HistoryResponse.fromJson(Map<String, dynamic> json) => _$HistoryResponseFromJson(json);
}
