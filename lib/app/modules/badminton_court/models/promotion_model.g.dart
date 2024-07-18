// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionModelImpl _$$PromotionModelImplFromJson(Map<String, dynamic> json) =>
    _$PromotionModelImpl(
      id: json['id'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
      title: json['title'] as String? ?? '',
      discount: (json['discount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PromotionModelImplToJson(
        _$PromotionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'title': instance.title,
      'discount': instance.discount,
    };
