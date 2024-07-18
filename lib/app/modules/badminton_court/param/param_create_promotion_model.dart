import 'package:freezed_annotation/freezed_annotation.dart';

part 'param_create_promotion_model.freezed.dart';
part 'param_create_promotion_model.g.dart';

@freezed
class ParamCreatePromotionModel with _$ParamCreatePromotionModel {
  const factory ParamCreatePromotionModel({
    @Default('') String title,
    @Default(0) int discount,
  }) = _ParamCreatePromotionModel;

  factory ParamCreatePromotionModel.fromJson(Map<String, dynamic> json) => _$ParamCreatePromotionModelFromJson(json);
}
