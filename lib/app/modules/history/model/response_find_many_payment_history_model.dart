import 'package:freezed_annotation/freezed_annotation.dart';
import 'response_find_many_payment_history_data_model.dart';

part 'response_find_many_payment_history_model.freezed.dart';
part 'response_find_many_payment_history_model.g.dart';

@freezed
class ResponseFindManyPaymentHistoryModel with _$ResponseFindManyPaymentHistoryModel {
  const factory ResponseFindManyPaymentHistoryModel({
    @Default("") String message,
    @Default([]) List<ResponseFindManyPaymentHistoryDataModel> data,
    @Default("") String duration,
    @Default("") String method,
    @Default(0) int statusCode,
  }) = _ResponseFindManyPaymentHistoryModel;

  factory ResponseFindManyPaymentHistoryModel.fromJson(Map<String, dynamic> json) => _$ResponseFindManyPaymentHistoryModelFromJson(json);
}
