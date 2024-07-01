// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingDetailModelImpl _$$ResponseBookingDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseBookingDetailModelImpl(
      id: json['id'] as String? ?? '',
      deviceId: json['deviceId'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      paymentStatus: json['paymentStatus'] as String? ?? '',
      expiredTime: json['expiredTime'] as String? ?? '',
      bookedBy: json['bookedBy'] as String? ?? '',
      totalAmount: (json['totalAmount'] as num?)?.toInt() ?? 0,
      bookingDate: json['bookingDate'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
      court: (json['court'] as List<dynamic>?)
              ?.map((e) => ResponseBookingDetailCourtModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ResponseBookingDetailModelImplToJson(
        _$ResponseBookingDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
      'phone': instance.phone,
      'fullName': instance.fullName,
      'paymentStatus': instance.paymentStatus,
      'expiredTime': instance.expiredTime,
      'bookedBy': instance.bookedBy,
      'totalAmount': instance.totalAmount,
      'bookingDate': instance.bookingDate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'court': instance.court,
    };
