// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'list_court.dart';

part 'create_booking_court_param.freezed.dart';
part 'create_booking_court_param.g.dart';

@freezed
class CreateBookingCourtParam with _$CreateBookingCourtParam {
  const factory CreateBookingCourtParam({
    @JsonKey(name: 'device_id') required String deviceId,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'court_number') required String courtNumber,
    @JsonKey(name: 'payment_status') required String paymentStatus,
    @JsonKey(name: 'booked_by') required String bookedBy,
    @JsonKey(name: 'total_amount') required int totalAmount,
    @JsonKey(name: 'courtSession') required List<ListCourt> courtSession,
  }) = _CreateBookingCourtParam;

  factory CreateBookingCourtParam.fromJson(Map<String, dynamic> json) => _$CreateBookingCourtParamFromJson(json);
}
