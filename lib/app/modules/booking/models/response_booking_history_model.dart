import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_booking_history_data_model.dart';

part 'response_booking_history_model.freezed.dart';
part 'response_booking_history_model.g.dart';

@freezed
class ResponseBookingHistoryModel with _$ResponseBookingHistoryModel {
  const factory ResponseBookingHistoryModel({
    @Default("") String message,
    @Default([]) List<ResponseBookingHistoryDataModel> data,
    @Default("") String duration,
    @Default("") String method,
    @Default(0) int statusCode,
  }) = _ResponseBookingHistoryModel;

  factory ResponseBookingHistoryModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingHistoryModelFromJson(json);
}
