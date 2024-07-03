import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/response_booking_data_model.dart';
part 'response_booking_model.freezed.dart';
part 'response_booking_model.g.dart';

@freezed
class ResponseBookingModel with _$ResponseBookingModel {
  const factory ResponseBookingModel({
    @Default("") String message,
    @Default(ResponseBookingDataModel()) ResponseBookingDataModel data,
    @Default("") String duration,
    @Default("") String method,
    @Default(0) int statusCode,
  }) = _ResponseBookingModel;

  factory ResponseBookingModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingModelFromJson(json);
}
