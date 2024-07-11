import 'package:freezed_annotation/freezed_annotation.dart';

part 'param_create_admin_model.freezed.dart';
part 'param_create_admin_model.g.dart';

@freezed
class ParamCreateAdminModel with _$ParamCreateAdminModel {
  const factory ParamCreateAdminModel({
    @Default('') String username,
    @Default('') String phone,
    @Default('') String password,
  }) = _ParamCreateAdminModel;

  factory ParamCreateAdminModel.fromJson(Map<String, dynamic> json) => _$ParamCreateAdminModelFromJson(json);
}
