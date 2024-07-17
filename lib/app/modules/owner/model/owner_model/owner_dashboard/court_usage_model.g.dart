// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'court_usage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourtUsageModelImpl _$$CourtUsageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourtUsageModelImpl(
      id: json['id'] as String? ?? '',
      courtUsed: json['court_used'] as String? ?? '',
      bookingCount: (json['booking_count'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$CourtUsageModelImplToJson(
        _$CourtUsageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'court_used': instance.courtUsed,
      'booking_count': instance.bookingCount,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
