// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param_create_admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParamCreateAdminModelImpl _$$ParamCreateAdminModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ParamCreateAdminModelImpl(
      username: json['username'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$ParamCreateAdminModelImplToJson(
        _$ParamCreateAdminModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'phone': instance.phone,
      'password': instance.password,
    };
