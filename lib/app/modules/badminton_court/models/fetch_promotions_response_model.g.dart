// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_promotions_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchPromotionsResponseModelImpl _$$FetchPromotionsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchPromotionsResponseModelImpl(
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => PromotionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      duration: json['duration'] as String? ?? '',
      method: json['method'] as String? ?? '',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$FetchPromotionsResponseModelImplToJson(
        _$FetchPromotionsResponseModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
