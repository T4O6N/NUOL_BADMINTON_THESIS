// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_find_one_history_booking_data_court_model.dart';
import 'response_booking_data_court_available_model.dart';

part 'response_find_one_history_booking_data_model.freezed.dart';
part 'response_find_one_history_booking_data_model.g.dart';

@freezed
class ResponseFindOneHistoryBookingDataModel with _$ResponseFindOneHistoryBookingDataModel {
  const factory ResponseFindOneHistoryBookingDataModel({
    @Default("") String id,
    @JsonKey(name: 'device_id') @Default("") String deviceId,
    @Default("") String phone,
    @JsonKey(name: 'full_name') @Default("") String fullName,
    @JsonKey(name: 'court_number') @Default("") String courtNumber,
    @JsonKey(name: 'payment_status') @Default("") String paymentStatus,
    @JsonKey(name: 'total_amount') @Default(0) int totalAmount,
    @JsonKey(name: 'booked_by') @Default("") String bookedBy,
    @JsonKey(name: 'created_at') @Default("") String createdAt,
    @JsonKey(name: 'updated_at') @Default("") String updatedAt,
    @Default([]) List<ResponseFindOneHistoryBookingDataCourtModel> court,
    @JsonKey(name: 'court_available') @Default([]) List<ResponseBookingDataCourtAvailableModel> courtAvailable,
  }) = _ResponseFindOneHistoryBookingDataModel;

  factory ResponseFindOneHistoryBookingDataModel.fromJson(Map<String, dynamic> json) => _$ResponseFindOneHistoryBookingDataModelFromJson(json);
}
