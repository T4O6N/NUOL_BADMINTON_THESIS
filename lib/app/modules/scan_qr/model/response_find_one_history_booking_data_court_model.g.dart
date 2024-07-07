// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_find_one_history_booking_data_court_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseFindOneHistoryBookingDataCourtModelImpl
    _$$ResponseFindOneHistoryBookingDataCourtModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ResponseFindOneHistoryBookingDataCourtModelImpl(
          id: json['id'] as String? ?? "",
          courtBookingId: json['court_booking_id'] as String? ?? "",
          createdAt: json['created_at'] as String? ?? "",
          updatedAt: json['updated_at'] as String? ?? "",
          date: json['date'] as String? ?? "",
          durationTime: (json['duration_time'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          available: json['available'] as bool? ?? true,
        );

Map<String, dynamic> _$$ResponseFindOneHistoryBookingDataCourtModelImplToJson(
        _$ResponseFindOneHistoryBookingDataCourtModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'court_booking_id': instance.courtBookingId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'date': instance.date,
      'duration_time': instance.durationTime,
      'available': instance.available,
    };
