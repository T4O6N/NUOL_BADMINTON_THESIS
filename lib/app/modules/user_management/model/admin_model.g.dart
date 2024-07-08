// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminModelImpl _$$AdminModelImplFromJson(Map<String, dynamic> json) =>
    _$AdminModelImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      isActive: json['isActive'] as bool,
      role: json['role'] as String? ?? 'admin',
    );

Map<String, dynamic> _$$AdminModelImplToJson(_$AdminModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'phone': instance.phone,
      'password': instance.password,
      'isActive': instance.isActive,
      'role': instance.role,
    };
