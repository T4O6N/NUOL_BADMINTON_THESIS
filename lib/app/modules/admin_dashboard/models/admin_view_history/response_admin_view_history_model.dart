import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/models/admin_view_history/response_admin_view_history_data.dart';

part 'response_admin_view_history_model.freezed.dart';
part 'response_admin_view_history_model.g.dart';

@freezed
class ResponseAdminViewHistory with _$ResponseAdminViewHistory {
  const factory ResponseAdminViewHistory({
    @Default('') String message,
    @Default(ResponseAdminViewHistoryData()) ResponseAdminViewHistoryData data,
    @Default('') String duration,
    @Default('') String method,
    @Default(0) int statusCode,
  }) = _ResponseAdminViewHistory;

  factory ResponseAdminViewHistory.fromJson(Map<String, dynamic> json) => _$ResponseAdminViewHistoryFromJson(json);
}
