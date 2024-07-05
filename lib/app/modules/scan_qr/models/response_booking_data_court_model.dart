import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_booking_data_court_model.freezed.dart';
part 'response_booking_data_court_model.g.dart';

@freezed
class ResponseBookingDataCourtModel with _$ResponseBookingDataCourtModel {
  const factory ResponseBookingDataCourtModel({
    @Default("") String id,
    @JsonKey(name: 'courtBookingId') @Default("") String courtBookingId,
    @JsonKey(name: 'created_at') @Default("") String createdAt,
    @JsonKey(name: 'updated_at') @Default("") String updatedAt,
    @JsonKey(name: 'date') @Default("") String date,
    @JsonKey(name: 'duration_time') @Default([]) List<String> durationTime,
    @Default(true) bool available,
    @JsonKey(name: 'courtBookingHistoryId') String? courtBookingHistoryId,
  }) = _ResponseBookingDataCourtModel;

  factory ResponseBookingDataCourtModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingDataCourtModelFromJson(json);
}
