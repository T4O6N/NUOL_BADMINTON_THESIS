import 'package:freezed_annotation/freezed_annotation.dart';
import 'promotion_model.dart';

part 'fetch_promotions_response_model.freezed.dart';
part 'fetch_promotions_response_model.g.dart';

@freezed
class FetchPromotionsResponseModel with _$FetchPromotionsResponseModel {
  const factory FetchPromotionsResponseModel({
    @Default('') String message,
    @Default([]) List<PromotionModel> data,
    @Default('') String duration,
    @Default('') String method,
    @Default(0) int statusCode,
  }) = _FetchPromotionsResponseModel;

  factory FetchPromotionsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchPromotionsResponseModelFromJson(json);
}
