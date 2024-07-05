// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_court.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListCourtImpl _$$ListCourtImplFromJson(Map<String, dynamic> json) =>
    _$ListCourtImpl(
      date: json['date'] as String,
      durationTime: (json['duration_time'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ListCourtImplToJson(_$ListCourtImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'duration_time': instance.durationTime,
    };
