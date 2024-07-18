import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_model.freezed.dart';
part 'promotion_model.g.dart';

@freezed
class PromotionModel with _$PromotionModel {
  const factory PromotionModel({
    @Default('') String id,
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default('') String title,
    @Default(0) int discount,
  }) = _PromotionModel;

  factory PromotionModel.fromJson(Map<String, dynamic> json) => _$PromotionModelFromJson(json);
}
