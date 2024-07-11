// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_admins_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchAdminsResponseModelImpl _$$FetchAdminsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchAdminsResponseModelImpl(
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => AdminModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      duration: json['duration'] as String? ?? '',
      method: json['method'] as String? ?? '',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$FetchAdminsResponseModelImplToJson(
        _$FetchAdminsResponseModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
