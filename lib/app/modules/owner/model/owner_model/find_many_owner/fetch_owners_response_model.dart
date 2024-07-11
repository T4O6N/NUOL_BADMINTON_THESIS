import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/owner/owner_model.dart';

part 'fetch_owners_response_model.freezed.dart';
part 'fetch_owners_response_model.g.dart';

@freezed
class FetchOwnersResponseModel with _$FetchOwnersResponseModel {
  const factory FetchOwnersResponseModel({
    @Default('') String message,
    @Default([]) List<OwnerModel> data,
    @Default('') String duration,
    @Default('') String method,
    @Default(0) int statusCode,
  }) = _FetchOwnersResponseModel;

  factory FetchOwnersResponseModel.fromJson(Map<String, dynamic> json) => _$FetchOwnersResponseModelFromJson(json);
}
