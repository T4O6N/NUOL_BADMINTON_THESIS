// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_booking_payment_model.dart';
import 'response_booking_data_court_available_model.dart';

part 'response_find_many_payment_history_data_model.freezed.dart';
part 'response_find_many_payment_history_data_model.g.dart';

@freezed
class ResponseFindManyPaymentHistoryDataModel with _$ResponseFindManyPaymentHistoryDataModel {
  const factory ResponseFindManyPaymentHistoryDataModel({
    @Default("") String id,
    @JsonKey(name: 'created_at') @Default("") String createdAt,
    @JsonKey(name: 'updated_at') @Default("") String updatedAt,
    @JsonKey(name: 'device_id') @Default("") String deviceId,
    @JsonKey(name: 'booking_payment_id') @Default("") String bookingPaymentId,
    @JsonKey(name: 'court_available_id') @Default("") String courtAvailableId,
    @JsonKey(name: 'booking_payment') @Default(ResponseBookingPaymentModel()) ResponseBookingPaymentModel bookingPayment,
    @JsonKey(name: 'court_available') @Default(ResponseBookingDataCourtAvailableModel()) ResponseBookingDataCourtAvailableModel courtAvailable,
  }) = _ResponseFindManyPaymentHistoryDataModel;

  factory ResponseFindManyPaymentHistoryDataModel.fromJson(Map<String, dynamic> json) => _$ResponseFindManyPaymentHistoryDataModelFromJson(json);
}
