// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_booking_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseBookingPaymentModelImpl _$$ResponseBookingPaymentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseBookingPaymentModelImpl(
      date: json['date'] as String? ?? "",
      paymentTime: json['payment_time'] as String? ?? "",
      courtBooking: json['court_booking'] == null
          ? const ResponseCourtBookingModel()
          : ResponseCourtBookingModel.fromJson(
              json['court_booking'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseBookingPaymentModelImplToJson(
        _$ResponseBookingPaymentModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'payment_time': instance.paymentTime,
      'court_booking': instance.courtBooking,
    };
