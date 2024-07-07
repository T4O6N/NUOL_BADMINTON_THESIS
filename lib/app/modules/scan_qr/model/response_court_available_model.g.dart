// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_court_available_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCourtAvailableModelImpl _$$ResponseCourtAvailableModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCourtAvailableModelImpl(
      totalAllCourtAvailable:
          (json['totalAllCourtAvailable'] as num?)?.toInt() ?? 0,
      isExpiredAll: json['isExpiredAll'] as bool? ?? false,
      totalAmount: (json['total_amount'] as num?)?.toInt() ?? 0,
      listOfCourtAvailable: (json['listOfCourtAvailable'] as List<dynamic>?)
              ?.map((e) => ResponseBookingDataCourtAvailableModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ResponseCourtAvailableModelImplToJson(
        _$ResponseCourtAvailableModelImpl instance) =>
    <String, dynamic>{
      'totalAllCourtAvailable': instance.totalAllCourtAvailable,
      'isExpiredAll': instance.isExpiredAll,
      'total_amount': instance.totalAmount,
      'listOfCourtAvailable': instance.listOfCourtAvailable,
    };
