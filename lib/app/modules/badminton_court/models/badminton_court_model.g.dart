// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badminton_court_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BadmintonCourtModelImpl _$$BadmintonCourtModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BadmintonCourtModelImpl(
      id: json['id'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      courtNumber: json['court_number'] as String? ?? '',
      courtTime: json['court_time'] as String?,
      description: json['description'] as String? ?? '',
      courtImage: (json['courtImage'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      available: json['available'] as bool? ?? true,
    );

Map<String, dynamic> _$$BadmintonCourtModelImplToJson(
        _$BadmintonCourtModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'court_number': instance.courtNumber,
      'court_time': instance.courtTime,
      'description': instance.description,
      'courtImage': instance.courtImage,
      'available': instance.available,
    };
