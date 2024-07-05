import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_booking_item_model.dart';

part 'response_booking_list_model.freezed.dart';
part 'response_booking_list_model.g.dart';

@freezed
class ResponseBookingListModel with _$ResponseBookingListModel {
  const factory ResponseBookingListModel({
    @Default("") String message,
    @Default([]) List<ResponseBookingItemModel> data,
    @Default("") String duration,
    @Default("") String method,
    @Default(0) int statusCode,
  }) = _ResponseBookingListModel;

  factory ResponseBookingListModel.fromJson(Map<String, dynamic> json) => _$ResponseBookingListModelFromJson(json);
}
