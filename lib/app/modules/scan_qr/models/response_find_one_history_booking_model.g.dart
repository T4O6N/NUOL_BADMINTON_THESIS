// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_find_one_history_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseFindOneHistoryBookingModelImpl
    _$$ResponseFindOneHistoryBookingModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ResponseFindOneHistoryBookingModelImpl(
          message: json['message'] as String? ?? "",
          data: json['data'] == null
              ? const ResponseFindOneHistoryBookingDataModel()
              : ResponseFindOneHistoryBookingDataModel.fromJson(
                  json['data'] as Map<String, dynamic>),
          duration: json['duration'] as String? ?? "",
          method: json['method'] as String? ?? "",
          statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
        );

Map<String, dynamic> _$$ResponseFindOneHistoryBookingModelImplToJson(
        _$ResponseFindOneHistoryBookingModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
