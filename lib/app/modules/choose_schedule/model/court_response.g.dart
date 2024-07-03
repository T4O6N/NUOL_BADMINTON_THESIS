// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'court_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourtResponseImpl _$$CourtResponseImplFromJson(Map<String, dynamic> json) =>
    _$CourtResponseImpl(
      id: json['id'] as String,
      courtBookingId: json['courtBookingId'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      date: json['date'] as String,
      available: json['available'] as bool? ?? true,
      duration_time: (json['duration_time'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CourtResponseImplToJson(_$CourtResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courtBookingId': instance.courtBookingId,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'date': instance.date,
      'available': instance.available,
      'duration_time': instance.duration_time,
    };
