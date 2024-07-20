// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param_create_badminton_court_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParamCreateBadmintonCourtModelImpl
    _$$ParamCreateBadmintonCourtModelImplFromJson(Map<String, dynamic> json) =>
        _$ParamCreateBadmintonCourtModelImpl(
          courtNumber: json['court_number'] as String? ?? "",
          description: json['description'] as String? ?? "",
          courtImage: json['court_image'] ?? "",
          available: json['available'] as bool? ?? true,
        );

Map<String, dynamic> _$$ParamCreateBadmintonCourtModelImplToJson(
        _$ParamCreateBadmintonCourtModelImpl instance) =>
    <String, dynamic>{
      'court_number': instance.courtNumber,
      'description': instance.description,
      'court_image': instance.courtImage,
      'available': instance.available,
    };
