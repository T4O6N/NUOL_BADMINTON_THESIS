// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'court_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourtTimeImpl _$$CourtTimeImplFromJson(Map<String, dynamic> json) =>
    _$CourtTimeImpl(
      date: json['date'] as String? ?? "",
      duration_time: (json['duration_time'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      available: json['available'] ?? true,
    );

Map<String, dynamic> _$$CourtTimeImplToJson(_$CourtTimeImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'duration_time': instance.duration_time,
      'available': instance.available,
    };
