// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingListModelImpl _$$ResponseBookingListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseBookingListModelImpl(
      message: json['message'] as String? ?? "",
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  ResponseBookingItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      duration: json['duration'] as String? ?? "",
      method: json['method'] as String? ?? "",
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ResponseBookingListModelImplToJson(
        _$ResponseBookingListModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
