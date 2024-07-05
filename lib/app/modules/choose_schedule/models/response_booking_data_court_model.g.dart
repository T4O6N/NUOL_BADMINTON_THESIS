// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_data_court_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingDataCourtModelImpl
    _$$ResponseBookingDataCourtModelImplFromJson(Map<String, dynamic> json) =>
        _$ResponseBookingDataCourtModelImpl(
          id: json['id'] as String? ?? "",
          courtBookingId: json['court_booking_id'] as String? ?? "",
          createdAt: json['created_at'] as String? ?? "",
          updatedAt: json['updated_at'] as String? ?? "",
          date: json['date'] as String? ?? "",
          available: json['available'] as bool? ?? true,
          durationTime: (json['duration_time'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ResponseBookingDataCourtModelImplToJson(
        _$ResponseBookingDataCourtModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'court_booking_id': instance.courtBookingId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'date': instance.date,
      'available': instance.available,
      'duration_time': instance.durationTime,
    };
