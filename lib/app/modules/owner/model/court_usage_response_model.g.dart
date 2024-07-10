// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'court_usage_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourtUsageResponseModelImpl _$$CourtUsageResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourtUsageResponseModelImpl(
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CourtUsageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      duration: json['duration'] as String? ?? '',
      method: json['method'] as String? ?? '',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CourtUsageResponseModelImplToJson(
        _$CourtUsageResponseModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
