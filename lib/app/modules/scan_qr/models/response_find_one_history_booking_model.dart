import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_find_one_history_booking_data_model.dart';

part 'response_find_one_history_booking_model.freezed.dart';
part 'response_find_one_history_booking_model.g.dart';

@freezed
class ResponseFindOneHistoryBookingModel with _$ResponseFindOneHistoryBookingModel {
  const factory ResponseFindOneHistoryBookingModel({
    @Default("") String message,
    @Default(ResponseFindOneHistoryBookingDataModel()) ResponseFindOneHistoryBookingDataModel data,
    @Default("") String duration,
    @Default("") String method,
    @Default(0) int statusCode,
  }) = _ResponseFindOneHistoryBookingModel;

  factory ResponseFindOneHistoryBookingModel.fromJson(Map<String, dynamic> json) => _$ResponseFindOneHistoryBookingModelFromJson(json);
}
