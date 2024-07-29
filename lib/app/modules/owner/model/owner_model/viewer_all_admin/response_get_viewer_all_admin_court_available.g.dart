// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_get_viewer_all_admin_court_available.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseGetViewerAllAdminCourtAvailableImpl
    _$$ResponseGetViewerAllAdminCourtAvailableImplFromJson(
            Map<String, dynamic> json) =>
        _$ResponseGetViewerAllAdminCourtAvailableImpl(
          allTotalAmount: (json['all_total_amount'] as num?)?.toInt() ?? 0,
          courtBooking: json['court_booking'] == null
              ? const ResponseGetViewerAllAdminCourtBooking()
              : ResponseGetViewerAllAdminCourtBooking.fromJson(
                  json['court_booking'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ResponseGetViewerAllAdminCourtAvailableImplToJson(
        _$ResponseGetViewerAllAdminCourtAvailableImpl instance) =>
    <String, dynamic>{
      'all_total_amount': instance.allTotalAmount,
      'court_booking': instance.courtBooking,
    };
