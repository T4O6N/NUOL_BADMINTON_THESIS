// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_daily_history_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingDailyHistoryDataModelImpl
    _$$ResponseBookingDailyHistoryDataModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ResponseBookingDailyHistoryDataModelImpl(
          id: json['id'] as String? ?? '',
          createdAt: json['created_at'] as String? ?? '',
          updatedAt: json['updated_at'] as String? ?? '',
          deviceId: json['device_id'] as String? ?? '',
          courtBookingId: json['court_booking_id'] as String? ?? '',
          courtBooking: json['court_booking'] == null
              ? const ResponseBookingDailyHistoryBookingModel()
              : ResponseBookingDailyHistoryBookingModel.fromJson(
                  json['court_booking'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ResponseBookingDailyHistoryDataModelImplToJson(
        _$ResponseBookingDailyHistoryDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'device_id': instance.deviceId,
      'court_booking_id': instance.courtBookingId,
      'court_booking': instance.courtBooking,
    };
