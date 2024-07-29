// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingDataModelImpl _$$ResponseBookingDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseBookingDataModelImpl(
      id: json['id'] as String? ?? "",
      deviceId: json['device_id'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      fullName: json['full_name'] as String? ?? "",
      courtNumber: json['court_number'] as String? ?? "",
      paymentStatus: json['payment_status'] as String? ?? "",
      totalAmount: (json['total_amount'] as num?)?.toInt() ?? 0,
      bookedBy: json['booked_by'] as String? ?? "",
      bookingTime: json['booking_time'] as String? ?? "",
      createdAt: json['created_at'] as String? ?? "",
      updatedAt: json['updated_at'] as String? ?? "",
      court: (json['court'] as List<dynamic>?)
              ?.map((e) => ResponseBookingDataCourtModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ResponseBookingDataModelImplToJson(
        _$ResponseBookingDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_id': instance.deviceId,
      'phone': instance.phone,
      'full_name': instance.fullName,
      'court_number': instance.courtNumber,
      'payment_status': instance.paymentStatus,
      'total_amount': instance.totalAmount,
      'booked_by': instance.bookedBy,
      'booking_time': instance.bookingTime,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'court': instance.court,
    };
