// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'court_duration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourtDurationImpl _$$CourtDurationImplFromJson(Map<String, dynamic> json) =>
    _$CourtDurationImpl(
      date: json['date'] as String,
      duration_time: (json['duration_time'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CourtDurationImplToJson(_$CourtDurationImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'duration_time': instance.duration_time,
    };
