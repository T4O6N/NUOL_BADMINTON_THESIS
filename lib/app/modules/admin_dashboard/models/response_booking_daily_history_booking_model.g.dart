// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_daily_history_booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingDailyHistoryBookingModelImpl
    _$$ResponseBookingDailyHistoryBookingModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ResponseBookingDailyHistoryBookingModelImpl(
          id: json['id'] as String? ?? '',
          deviceId: json['device_id'] as String? ?? '',
          phone: json['phone'] as String? ?? '',
          fullName: json['full_name'] as String? ?? '',
          courtNumber: json['court_number'] as String? ?? '',
          paymentStatus: json['payment_status'] as String? ?? '',
          totalAmount: (json['total_amount'] as num?)?.toInt() ?? 0,
          bookedBy: json['booked_by'] as String? ?? '',
          createdAt: json['created_at'] as String? ?? '',
          updatedAt: json['updated_at'] as String? ?? '',
        );

Map<String, dynamic> _$$ResponseBookingDailyHistoryBookingModelImplToJson(
        _$ResponseBookingDailyHistoryBookingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_id': instance.deviceId,
      'phone': instance.phone,
      'full_name': instance.fullName,
      'court_number': instance.courtNumber,
      'payment_status': instance.paymentStatus,
      'total_amount': instance.totalAmount,
      'booked_by': instance.bookedBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
