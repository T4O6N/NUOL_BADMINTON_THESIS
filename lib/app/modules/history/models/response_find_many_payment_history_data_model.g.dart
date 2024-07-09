// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_find_many_payment_history_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseFindManyPaymentHistoryDataModelImpl
    _$$ResponseFindManyPaymentHistoryDataModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ResponseFindManyPaymentHistoryDataModelImpl(
          id: json['id'] as String? ?? "",
          createdAt: json['created_at'] as String? ?? "",
          updatedAt: json['updated_at'] as String? ?? "",
          deviceId: json['device_id'] as String? ?? "",
          bookingPaymentId: json['booking_payment_id'] as String? ?? "",
          courtAvailableId: json['court_available_id'] as String? ?? "",
          bookingPayment: json['booking_payment'] == null
              ? const ResponseBookingPaymentModel()
              : ResponseBookingPaymentModel.fromJson(
                  json['booking_payment'] as Map<String, dynamic>),
          courtAvailable: json['court_available'] == null
              ? const ResponseBookingDataCourtAvailableModel()
              : ResponseBookingDataCourtAvailableModel.fromJson(
                  json['court_available'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ResponseFindManyPaymentHistoryDataModelImplToJson(
        _$ResponseFindManyPaymentHistoryDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'device_id': instance.deviceId,
      'booking_payment_id': instance.bookingPaymentId,
      'court_available_id': instance.courtAvailableId,
      'booking_payment': instance.bookingPayment,
      'court_available': instance.courtAvailable,
    };
