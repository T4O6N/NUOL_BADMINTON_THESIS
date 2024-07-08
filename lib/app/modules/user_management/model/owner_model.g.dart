// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerModelImpl _$$OwnerModelImplFromJson(Map<String, dynamic> json) =>
    _$OwnerModelImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      isActive: json['isActive'] as bool,
      role: json['role'] as String? ?? 'owner',
    );

Map<String, dynamic> _$$OwnerModelImplToJson(_$OwnerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'phone': instance.phone,
      'password': instance.password,
      'isActive': instance.isActive,
      'role': instance.role,
    };
