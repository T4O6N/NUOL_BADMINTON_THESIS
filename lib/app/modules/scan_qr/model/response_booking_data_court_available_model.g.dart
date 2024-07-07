// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_data_court_available_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingDataCourtAvailableModelImpl
    _$$ResponseBookingDataCourtAvailableModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ResponseBookingDataCourtAvailableModelImpl(
          date: json['date'] as String? ?? "",
          durationTime: (json['duration_time'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          totalAmount: (json['total_amount'] as num?)?.toInt() ?? 0,
          statusMessage: (json['status_message'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ResponseBookingDataCourtAvailableModelImplToJson(
        _$ResponseBookingDataCourtAvailableModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'duration_time': instance.durationTime,
      'total_amount': instance.totalAmount,
      'status_message': instance.statusMessage,
    };
