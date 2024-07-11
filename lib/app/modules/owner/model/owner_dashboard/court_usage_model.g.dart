// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'court_usage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourtUsageModelImpl _$$CourtUsageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CourtUsageModelImpl(
      courtNumber: json['court_number'] as String? ?? '',
      bookingCount: (json['booking_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CourtUsageModelImplToJson(
        _$CourtUsageModelImpl instance) =>
    <String, dynamic>{
      'court_number': instance.courtNumber,
      'booking_count': instance.bookingCount,
    };
