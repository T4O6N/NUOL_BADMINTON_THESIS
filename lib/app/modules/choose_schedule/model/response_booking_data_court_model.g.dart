// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_data_court_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingDataCourtModelImpl
    _$$ResponseBookingDataCourtModelImplFromJson(Map<String, dynamic> json) =>
        _$ResponseBookingDataCourtModelImpl(
          id: json['id'] as String? ?? "",
          courtBookingId: json['courtBookingId'] as String? ?? "",
          createdAt: json['createdAt'] as String? ?? "",
          updatedAt: json['updatedAt'] as String? ?? "",
          date: json['date'] as String? ?? "",
          available: json['available'] as bool? ?? true,
          durationTime: (json['durationTime'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ResponseBookingDataCourtModelImplToJson(
        _$ResponseBookingDataCourtModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courtBookingId': instance.courtBookingId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'date': instance.date,
      'available': instance.available,
      'durationTime': instance.durationTime,
    };
