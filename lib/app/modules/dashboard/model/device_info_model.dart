// To parse this JSON data, do
//
//     final deviceInfoModel = deviceInfoModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'device_info_model.freezed.dart';
part 'device_info_model.g.dart';

DeviceInfoModel deviceInfoModelFromJson(String str) => DeviceInfoModel.fromJson(json.decode(str));

String deviceInfoModelToJson(DeviceInfoModel data) => json.encode(data.toJson());

@freezed
class DeviceInfoModel with _$DeviceInfoModel {
  const factory DeviceInfoModel({
    @Default('') String id,
  }) = _DeviceInfoModel;

  factory DeviceInfoModel.fromJson(Map<String, dynamic> json) => _$DeviceInfoModelFromJson(json);
}
