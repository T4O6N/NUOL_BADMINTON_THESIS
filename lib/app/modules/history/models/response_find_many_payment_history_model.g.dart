// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_find_many_payment_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseFindManyPaymentHistoryModelImpl
    _$$ResponseFindManyPaymentHistoryModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ResponseFindManyPaymentHistoryModelImpl(
          message: json['message'] as String? ?? "",
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) => ResponseFindManyPaymentHistoryDataModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
          duration: json['duration'] as String? ?? "",
          method: json['method'] as String? ?? "",
          statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
        );

Map<String, dynamic> _$$ResponseFindManyPaymentHistoryModelImplToJson(
        _$ResponseFindManyPaymentHistoryModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'duration': instance.duration,
      'method': instance.method,
      'statusCode': instance.statusCode,
    };
