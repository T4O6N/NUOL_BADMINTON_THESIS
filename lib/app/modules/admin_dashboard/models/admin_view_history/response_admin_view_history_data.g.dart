// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_admin_view_history_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseAdminViewHistoryDataImpl _$$ResponseAdminViewHistoryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseAdminViewHistoryDataImpl(
      id: json['id'] as String? ?? '',
      isActive: json['is_active'] as bool? ?? true,
      username: json['username'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      password: json['password'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      courtBookingPaymentHistory: (json['courtBookingPaymentHistory']
                  as List<dynamic>?)
              ?.map((e) =>
                  ResponseAdminViewHistoryCourtBookingPaymentHistory.fromJson(
                      e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ResponseAdminViewHistoryDataImplToJson(
        _$ResponseAdminViewHistoryDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_active': instance.isActive,
      'username': instance.username,
      'phone': instance.phone,
      'password': instance.password,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'courtBookingPaymentHistory': instance.courtBookingPaymentHistory,
    };
