// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_owners_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchOwnersResponseModelImpl _$$FetchOwnersResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchOwnersResponseModelImpl(
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => OwnerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      duration: json['duration'] as String? ?? '',
      method: json['method'] as String? ?? '',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$FetchOwnersResponseModelImplToJson(
        _$FetchOwnersResponseModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
