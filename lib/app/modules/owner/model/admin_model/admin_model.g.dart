// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminModelImpl _$$AdminModelImplFromJson(Map<String, dynamic> json) =>
    _$AdminModelImpl(
      id: json['id'] as String? ?? '',
      isActive: json['isActive'] as bool? ?? false,
      username: json['username'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      password: json['password'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$AdminModelImplToJson(_$AdminModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'username': instance.username,
      'phone': instance.phone,
      'password': instance.password,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
