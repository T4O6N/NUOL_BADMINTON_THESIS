import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_booking_daily_history_data_model.dart';

part 'response_booking_daily_history_model.freezed.dart';
part 'response_booking_daily_history_model.g.dart';

@freezed
class ResponseBookingDailyHistoryModel with _$ResponseBookingDailyHistoryModel {
  const factory ResponseBookingDailyHistoryModel({
    @Default('') String message,
    @Default([]) List<ResponseBookingDailyHistoryDataModel> data,
    @Default('') String duration,
    @Default('') String method,
    @Default(0) int statusCode,
  }) = _ResponseBookingDailyHistoryModel;

  factory ResponseBookingDailyHistoryModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingDailyHistoryModelFromJson(json);
}
