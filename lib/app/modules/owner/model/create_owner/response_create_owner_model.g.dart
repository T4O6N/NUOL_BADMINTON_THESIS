// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_create_owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCreateOwnerModelImpl _$$ResponseCreateOwnerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCreateOwnerModelImpl(
      message: json['message'] as String? ?? "",
      data: json['data'] == null
          ? const OwnerModel()
          : OwnerModel.fromJson(json['data'] as Map<String, dynamic>),
      duration: json['duration'] as String? ?? "",
      method: json['method'] as String? ?? "",
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ResponseCreateOwnerModelImplToJson(
        _$ResponseCreateOwnerModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
