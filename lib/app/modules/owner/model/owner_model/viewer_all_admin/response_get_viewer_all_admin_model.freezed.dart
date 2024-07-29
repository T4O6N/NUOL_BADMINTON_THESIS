// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_get_viewer_all_admin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseGetViewerAllAdmin _$ResponseGetViewerAllAdminFromJson(
    Map<String, dynamic> json) {
  return _ResponseGetViewerAllAdmin.fromJson(json);
}

/// @nodoc
mixin _$ResponseGetViewerAllAdmin {
  String get message => throw _privateConstructorUsedError;
  List<ResponseGetViewerAllAdminData> get data =>
      throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseGetViewerAllAdminCopyWith<ResponseGetViewerAllAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseGetViewerAllAdminCopyWith<$Res> {
  factory $ResponseGetViewerAllAdminCopyWith(ResponseGetViewerAllAdmin value,
          $Res Function(ResponseGetViewerAllAdmin) then) =
      _$ResponseGetViewerAllAdminCopyWithImpl<$Res, ResponseGetViewerAllAdmin>;
  @useResult
  $Res call(
      {String message,
      List<ResponseGetViewerAllAdminData> data,
      String duration,
      String method,
      int statusCode});
}

/// @nodoc
class _$ResponseGetViewerAllAdminCopyWithImpl<$Res,
        $Val extends ResponseGetViewerAllAdmin>
    implements $ResponseGetViewerAllAdminCopyWith<$Res> {
  _$ResponseGetViewerAllAdminCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
    Object? duration = null,
    Object? method = null,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ResponseGetViewerAllAdminData>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseGetViewerAllAdminImplCopyWith<$Res>
    implements $ResponseGetViewerAllAdminCopyWith<$Res> {
  factory _$$ResponseGetViewerAllAdminImplCopyWith(
          _$ResponseGetViewerAllAdminImpl value,
          $Res Function(_$ResponseGetViewerAllAdminImpl) then) =
      __$$ResponseGetViewerAllAdminImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      List<ResponseGetViewerAllAdminData> data,
      String duration,
      String method,
      int statusCode});
}

/// @nodoc
class __$$ResponseGetViewerAllAdminImplCopyWithImpl<$Res>
    extends _$ResponseGetViewerAllAdminCopyWithImpl<$Res,
        _$ResponseGetViewerAllAdminImpl>
    implements _$$ResponseGetViewerAllAdminImplCopyWith<$Res> {
  __$$ResponseGetViewerAllAdminImplCopyWithImpl(
      _$ResponseGetViewerAllAdminImpl _value,
      $Res Function(_$ResponseGetViewerAllAdminImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
    Object? duration = null,
    Object? method = null,
    Object? statusCode = null,
  }) {
    return _then(_$ResponseGetViewerAllAdminImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ResponseGetViewerAllAdminData>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseGetViewerAllAdminImpl implements _ResponseGetViewerAllAdmin {
  const _$ResponseGetViewerAllAdminImpl(
      {this.message = '',
      final List<ResponseGetViewerAllAdminData> data =
          const <ResponseGetViewerAllAdminData>[],
      this.duration = '',
      this.method = '',
      this.statusCode = 0})
      : _data = data;

  factory _$ResponseGetViewerAllAdminImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseGetViewerAllAdminImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  final List<ResponseGetViewerAllAdminData> _data;
  @override
  @JsonKey()
  List<ResponseGetViewerAllAdminData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String duration;
  @override
  @JsonKey()
  final String method;
  @override
  @JsonKey()
  final int statusCode;

  @override
  String toString() {
    return 'ResponseGetViewerAllAdmin(message: $message, data: $data, duration: $duration, method: $method, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseGetViewerAllAdminImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(_data), duration, method, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseGetViewerAllAdminImplCopyWith<_$ResponseGetViewerAllAdminImpl>
      get copyWith => __$$ResponseGetViewerAllAdminImplCopyWithImpl<
          _$ResponseGetViewerAllAdminImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseGetViewerAllAdminImplToJson(
      this,
    );
  }
}

abstract class _ResponseGetViewerAllAdmin implements ResponseGetViewerAllAdmin {
  const factory _ResponseGetViewerAllAdmin(
      {final String message,
      final List<ResponseGetViewerAllAdminData> data,
      final String duration,
      final String method,
      final int statusCode}) = _$ResponseGetViewerAllAdminImpl;

  factory _ResponseGetViewerAllAdmin.fromJson(Map<String, dynamic> json) =
      _$ResponseGetViewerAllAdminImpl.fromJson;

  @override
  String get message;
  @override
  List<ResponseGetViewerAllAdminData> get data;
  @override
  String get duration;
  @override
  String get method;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ResponseGetViewerAllAdminImplCopyWith<_$ResponseGetViewerAllAdminImpl>
      get copyWith => throw _privateConstructorUsedError;
}
