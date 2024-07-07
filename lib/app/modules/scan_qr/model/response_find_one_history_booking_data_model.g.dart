// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_find_one_history_booking_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseFindOneHistoryBookingDataModelImpl
    _$$ResponseFindOneHistoryBookingDataModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ResponseFindOneHistoryBookingDataModelImpl(
          courtBooking: json['courtBooking'] == null
              ? const ResponseCourtBookingModel()
              : ResponseCourtBookingModel.fromJson(
                  json['courtBooking'] as Map<String, dynamic>),
          courtAvailable: json['courtAvailable'] == null
              ? const ResponseCourtAvailableModel()
              : ResponseCourtAvailableModel.fromJson(
                  json['courtAvailable'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ResponseFindOneHistoryBookingDataModelImplToJson(
        _$ResponseFindOneHistoryBookingDataModelImpl instance) =>
    <String, dynamic>{
      'courtBooking': instance.courtBooking,
      'courtAvailable': instance.courtAvailable,
    };
