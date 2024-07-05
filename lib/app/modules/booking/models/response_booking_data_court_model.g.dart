// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_data_court_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingDataCourtModelImpl
    _$$ResponseBookingDataCourtModelImplFromJson(Map<String, dynamic> json) =>
        _$ResponseBookingDataCourtModelImpl(
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
      'date': instance.date,
      'duration_time': instance.durationTime,
      'available': instance.available,
    };
