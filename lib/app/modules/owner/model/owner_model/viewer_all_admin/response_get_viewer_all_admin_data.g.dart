// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_get_viewer_all_admin_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseGetViewerAllAdminDataImpl
    _$$ResponseGetViewerAllAdminDataImplFromJson(Map<String, dynamic> json) =>
        _$ResponseGetViewerAllAdminDataImpl(
          id: json['id'] as String? ?? '',
          isActive: json['isActive'] as bool? ?? true,
          username: json['username'] as String? ?? '',
          phone: json['phone'] as String? ?? '',
          password: json['password'] as String? ?? '',
          createdAt: json['created_at'] as String? ?? '',
          updatedAt: json['updated_at'] as String? ?? '',
          courtBookingPaymentHistory:
              (json['courtBookingPaymentHistory'] as List<dynamic>?)
                      ?.map((e) =>
                          ResponseGetViewerAllAdminCourtBookingPaymentHistory
                              .fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const <ResponseGetViewerAllAdminCourtBookingPaymentHistory>[],
        );

Map<String, dynamic> _$$ResponseGetViewerAllAdminDataImplToJson(
        _$ResponseGetViewerAllAdminDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'username': instance.username,
      'phone': instance.phone,
      'password': instance.password,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'courtBookingPaymentHistory': instance.courtBookingPaymentHistory,
    };
