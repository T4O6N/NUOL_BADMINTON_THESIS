// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingItemModelImpl _$$ResponseBookingItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseBookingItemModelImpl(
      id: json['id'] as String? ?? "",
      createdAt: json['created_at'] as String? ?? "",
      updatedAt: json['updated_at'] as String? ?? "",
      deviceId: json['device_id'] as String? ?? "",
      courtBookingId: json['court_booking_id'] as String? ?? "",
      courtBooking: ResponseBookingDataModel.fromJson(
          json['court_booking'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseBookingItemModelImplToJson(
        _$ResponseBookingItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'device_id': instance.deviceId,
      'court_booking_id': instance.courtBookingId,
      'court_booking': instance.courtBooking,
    };
