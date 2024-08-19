// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_admin_view_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseAdminViewHistoryImpl _$$ResponseAdminViewHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseAdminViewHistoryImpl(
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const ResponseAdminViewHistoryData()
          : ResponseAdminViewHistoryData.fromJson(
              json['data'] as Map<String, dynamic>),
      duration: json['duration'] as String? ?? '',
      method: json['method'] as String? ?? '',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ResponseAdminViewHistoryImplToJson(
        _$ResponseAdminViewHistoryImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
