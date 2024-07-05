// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_data_court_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingDataCourtModelImpl
    _$$ResponseBookingDataCourtModelImplFromJson(Map<String, dynamic> json) =>
        _$ResponseBookingDataCourtModelImpl(
          id: json['id'] as String? ?? "",
          createdAt: json['created_at'] as String? ?? "",
          updatedAt: json['updated_at'] as String? ?? "",
          courtBookingId: json['court_booking_id'] as String? ?? "",
          courtBookingHistoryId: json['court_booking_history_id'] as String?,
          courtAvailableId: json['court_available_id'] as String?,
          date: json['date'] as String? ?? "",
          durationTime: (json['duration_time'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          available: json['available'] as bool? ?? true,
        );

Map<String, dynamic> _$$ResponseBookingDataCourtModelImplToJson(
        _$ResponseBookingDataCourtModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'court_booking_id': instance.courtBookingId,
      'court_booking_history_id': instance.courtBookingHistoryId,
      'court_available_id': instance.courtAvailableId,
      'date': instance.date,
      'duration_time': instance.durationTime,
      'available': instance.available,
    };
