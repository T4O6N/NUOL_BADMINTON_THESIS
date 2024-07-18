// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param_create_promotion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParamCreatePromotionModelImpl _$$ParamCreatePromotionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ParamCreatePromotionModelImpl(
      title: json['title'] as String? ?? '',
      discount: (json['discount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ParamCreatePromotionModelImplToJson(
        _$ParamCreatePromotionModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'discount': instance.discount,
    };
