// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_booking_data_court_model.dart';

part 'response_booking_data_model.freezed.dart';
part 'response_booking_data_model.g.dart';

@freezed
class ResponseBookingDataModel with _$ResponseBookingDataModel {
  const factory ResponseBookingDataModel({
    @Default("") String id,
    @JsonKey(name: 'device_id') @Default("") String deviceId,
    @Default("") String phone,
    @JsonKey(name: 'full_name') @Default("") String fullName,
    @JsonKey(name: 'court_number') @Default("") String courtNumber,
    @JsonKey(name: 'payment_status') @Default("") String paymentStatus,
    @JsonKey(name: 'total_amount') @Default(0) int totalAmount,
    @JsonKey(name: 'booked_by') @Default("") String bookedBy,
    @JsonKey(name: 'booking_time') @Default("") String bookingTime,
    @JsonKey(name: 'created_at') @Default("") String createdAt,
    @JsonKey(name: 'updated_at') @Default("") String updatedAt,
    @Default([]) List<ResponseBookingDataCourtModel> court,
  }) = _ResponseBookingDataModel;

  factory ResponseBookingDataModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingDataModelFromJson(json);
}
