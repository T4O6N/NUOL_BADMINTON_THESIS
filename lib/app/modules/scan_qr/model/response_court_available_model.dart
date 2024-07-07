// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_booking_data_court_available_model.dart';

part 'response_court_available_model.freezed.dart';
part 'response_court_available_model.g.dart';

@freezed
class ResponseCourtAvailableModel with _$ResponseCourtAvailableModel {
  const factory ResponseCourtAvailableModel({
    @Default(0) int totalAllCourtAvailable,
    @Default(false) bool isExpiredAll,
    @JsonKey(name: 'total_amount') @Default(0) int totalAmount,
    @JsonKey(name: 'listOfCourtAvailable') @Default([]) List<ResponseBookingDataCourtAvailableModel> listOfCourtAvailable,
  }) = _ResponseCourtAvailableModel;

  factory ResponseCourtAvailableModel.fromJson(Map<String, dynamic> json) => _$ResponseCourtAvailableModelFromJson(json);
}
