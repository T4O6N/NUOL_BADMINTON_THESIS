// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_booking_court_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBookingCourtParamImpl _$$CreateBookingCourtParamImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBookingCourtParamImpl(
      deviceId: json['deviceId'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      paymentStatus: json['paymentStatus'] as String? ?? '',
      bookedBy: json['bookedBy'] as String? ?? '',
      totalAmount: (json['totalAmount'] as num?)?.toInt() ?? 0,
      court: (json['court'] as List<dynamic>?)
              ?.map((e) => CreateBookingCourtDurationTimeParam.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CreateBookingCourtParamImplToJson(
        _$CreateBookingCourtParamImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'phone': instance.phone,
      'fullName': instance.fullName,
      'paymentStatus': instance.paymentStatus,
      'bookedBy': instance.bookedBy,
      'totalAmount': instance.totalAmount,
      'court': instance.court,
    };
