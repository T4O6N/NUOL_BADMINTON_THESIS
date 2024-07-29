// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_get_viewer_all_admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseGetViewerAllAdminImpl _$$ResponseGetViewerAllAdminImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseGetViewerAllAdminImpl(
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ResponseGetViewerAllAdminData.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <ResponseGetViewerAllAdminData>[],
      duration: json['duration'] as String? ?? '',
      method: json['method'] as String? ?? '',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ResponseGetViewerAllAdminImplToJson(
        _$ResponseGetViewerAllAdminImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
