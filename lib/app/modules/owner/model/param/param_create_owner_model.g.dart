// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param_create_owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParamCreateOwnerModelImpl _$$ParamCreateOwnerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ParamCreateOwnerModelImpl(
      username: json['username'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      password: json['password'] as String? ?? "",
    );

Map<String, dynamic> _$$ParamCreateOwnerModelImplToJson(
        _$ParamCreateOwnerModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'phone': instance.phone,
      'password': instance.password,
    };
