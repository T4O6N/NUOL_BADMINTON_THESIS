// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_get_viewer_all_admin_court_booking_payment_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl
    _$$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImplFromJson(
            Map<String, dynamic> json) =>
        _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl(
          id: json['id'] as String? ?? '',
          createdAt: json['created_at'] as String? ?? '',
          updatedAt: json['updated_at'] as String? ?? '',
          deviceId: json['device_id'] as String? ?? '',
          bookingPaymentId: json['booking_payment_id'] as String? ?? '',
          courtAvailableId: json['court_available_id'] as String? ?? '',
          adminId: json['admin_id'] as String? ?? '',
          courtAvailable: json['court_available'] == null
              ? const ResponseGetViewerAllAdminCourtAvailable()
              : ResponseGetViewerAllAdminCourtAvailable.fromJson(
                  json['court_available'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImplToJson(
        _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'device_id': instance.deviceId,
      'booking_payment_id': instance.bookingPaymentId,
      'court_available_id': instance.courtAvailableId,
      'admin_id': instance.adminId,
      'court_available': instance.courtAvailable,
    };
