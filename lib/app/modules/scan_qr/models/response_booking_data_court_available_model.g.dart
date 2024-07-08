// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_data_court_available_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingDataCourtAvailableModelImpl
    _$$ResponseBookingDataCourtAvailableModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ResponseBookingDataCourtAvailableModelImpl(
          id: json['id'] as String? ?? "",
          totalAllCourtAvailable:
              (json['totalAllCourtAvailable'] as num?)?.toInt() ?? 0,
          isExpiredAll: json['isExpiredAll'] as bool? ?? false,
          allTotalAmount: (json['all_total_amount'] as num?)?.toInt() ?? 0,
          date: json['date'] as String? ?? "",
          durationTime: (json['duration_time'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$ResponseBookingDataCourtAvailableModelImplToJson(
        _$ResponseBookingDataCourtAvailableModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'totalAllCourtAvailable': instance.totalAllCourtAvailable,
      'isExpiredAll': instance.isExpiredAll,
      'all_total_amount': instance.allTotalAmount,
      'date': instance.date,
      'duration_time': instance.durationTime,
    };
