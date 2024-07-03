// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingDataModelImpl _$$ResponseBookingDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseBookingDataModelImpl(
      id: json['id'] as String? ?? "",
      deviceId: json['deviceId'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      fullName: json['fullName'] as String? ?? "",
      courtNumber: json['courtNumber'] as String? ?? "",
      paymentStatus: json['paymentStatus'] as String? ?? "",
      totalAmount: (json['totalAmount'] as num?)?.toInt() ?? 0,
      bookedBy: json['bookedBy'] as String? ?? "",
      expiredTime: json['expiredTime'] as String? ?? "",
      bookingDate: json['bookingDate'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
      updatedAt: json['updatedAt'] as String? ?? "",
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
      'deviceId': instance.deviceId,
      'phone': instance.phone,
      'fullName': instance.fullName,
      'courtNumber': instance.courtNumber,
      'paymentStatus': instance.paymentStatus,
      'totalAmount': instance.totalAmount,
      'bookedBy': instance.bookedBy,
      'expiredTime': instance.expiredTime,
      'bookingDate': instance.bookingDate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'court': instance.court,
    };
