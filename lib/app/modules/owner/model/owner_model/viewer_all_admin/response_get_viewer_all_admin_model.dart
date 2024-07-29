import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/viewer_all_admin/response_get_viewer_all_admin_data.dart';

part 'response_get_viewer_all_admin_model.freezed.dart';
part 'response_get_viewer_all_admin_model.g.dart';

@freezed
class ResponseGetViewerAllAdmin with _$ResponseGetViewerAllAdmin {
  const factory ResponseGetViewerAllAdmin({
    @Default('') String message,
    @Default(<ResponseGetViewerAllAdminData>[]) List<ResponseGetViewerAllAdminData> data,
    @Default('') String duration,
    @Default('') String method,
    @Default(0) int statusCode,
  }) = _ResponseGetViewerAllAdmin;

  factory ResponseGetViewerAllAdmin.fromJson(Map<String, dynamic> json) => _$ResponseGetViewerAllAdminFromJson(json);
}
