// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_detail_court_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingDetailCourtModelImpl
    _$$ResponseBookingDetailCourtModelImplFromJson(Map<String, dynamic> json) =>
        _$ResponseBookingDetailCourtModelImpl(
          id: json['id'] as String? ?? '',
          courtBookingId: json['courtBookingId'] as String? ?? '',
          createdAt: json['createdAt'] as String? ?? '',
          updatedAt: json['updatedAt'] as String? ?? '',
          courtNumber: json['courtNumber'] as String? ?? '',
          courtPrice: (json['courtPrice'] as num?)?.toInt() ?? 0,
          date: json['date'] as String? ?? '',
          available: json['available'] as bool? ?? true,
          durationTime: (json['durationTime'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ResponseBookingDetailCourtModelImplToJson(
        _$ResponseBookingDetailCourtModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courtBookingId': instance.courtBookingId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'courtNumber': instance.courtNumber,
      'courtPrice': instance.courtPrice,
      'date': instance.date,
      'available': instance.available,
      'durationTime': instance.durationTime,
    };
