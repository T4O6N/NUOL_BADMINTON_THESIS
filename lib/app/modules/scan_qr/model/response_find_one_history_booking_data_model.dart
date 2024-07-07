import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuol_badminton_thesis/app/modules/scan_qr/model/response_court_available_model.dart';
import 'response_court_booking_model.dart';

part 'response_find_one_history_booking_data_model.freezed.dart';
part 'response_find_one_history_booking_data_model.g.dart';

@freezed
class ResponseFindOneHistoryBookingDataModel with _$ResponseFindOneHistoryBookingDataModel {
  const factory ResponseFindOneHistoryBookingDataModel({
    @Default(ResponseCourtBookingModel()) ResponseCourtBookingModel courtBooking,
    @Default(ResponseCourtAvailableModel()) ResponseCourtAvailableModel courtAvailable,
  }) = _ResponseFindOneHistoryBookingDataModel;

  factory ResponseFindOneHistoryBookingDataModel.fromJson(Map<String, dynamic> json) => _$ResponseFindOneHistoryBookingDataModelFromJson(json);
}
