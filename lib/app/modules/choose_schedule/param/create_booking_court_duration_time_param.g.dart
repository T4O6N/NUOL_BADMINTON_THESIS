// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_booking_court_duration_time_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBookingCourtDurationTimeParamImpl
    _$$CreateBookingCourtDurationTimeParamImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateBookingCourtDurationTimeParamImpl(
          courtNumber: json['courtNumber'] as String? ?? '',
          courtPrice: (json['courtPrice'] as num?)?.toInt() ?? 0,
          date: json['date'] as String? ?? '',
          durationTime: (json['durationTime'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$CreateBookingCourtDurationTimeParamImplToJson(
        _$CreateBookingCourtDurationTimeParamImpl instance) =>
    <String, dynamic>{
      'courtNumber': instance.courtNumber,
      'courtPrice': instance.courtPrice,
      'date': instance.date,
      'durationTime': instance.durationTime,
    };
