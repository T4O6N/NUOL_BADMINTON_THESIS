// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'court.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourtImpl _$$CourtImplFromJson(Map<String, dynamic> json) => _$CourtImpl(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      price: (json['price'] as num?)?.toInt() ?? 0,
      imageUrl: json['imageUrl'] as String? ?? "",
    );

Map<String, dynamic> _$$CourtImplToJson(_$CourtImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
    };
