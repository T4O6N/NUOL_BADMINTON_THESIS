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
          createdAt: json['created_at'] as String? ?? "",
          updatedAt: json['updated_at'] as String? ?? "",
          date: json['date'] as String? ?? "",
          durationTime: (json['duration_time'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          available: json['available'] as bool? ?? true,
          courtBookingHistoryId: json['courtBookingHistoryId'] as String?,
        );

Map<String, dynamic> _$$ResponseBookingDataCourtModelImplToJson(
        _$ResponseBookingDataCourtModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courtBookingId': instance.courtBookingId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'date': instance.date,
      'duration_time': instance.durationTime,
      'available': instance.available,
      'courtBookingHistoryId': instance.courtBookingHistoryId,
    };
