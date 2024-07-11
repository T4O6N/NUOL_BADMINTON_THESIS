import 'package:freezed_annotation/freezed_annotation.dart';
import 'admin_model.dart';

part 'fetch_admins_response_model.freezed.dart';
part 'fetch_admins_response_model.g.dart';

@freezed
class FetchAdminsResponseModel with _$FetchAdminsResponseModel {
  const factory FetchAdminsResponseModel({
    @Default('') String message,
    @Default([]) List<AdminModel> data,
    @Default('') String duration,
    @Default('') String method,
    @Default(0) int statusCode,
  }) = _FetchAdminsResponseModel;

  factory FetchAdminsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchAdminsResponseModelFromJson(json);
}
