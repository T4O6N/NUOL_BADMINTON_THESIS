// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_admins_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchAdminsResponseModel _$FetchAdminsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchAdminsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchAdminsResponseModel {
  String get message => throw _privateConstructorUsedError;
  List<AdminModel> get data => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchAdminsResponseModelCopyWith<FetchAdminsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchAdminsResponseModelCopyWith<$Res> {
  factory $FetchAdminsResponseModelCopyWith(FetchAdminsResponseModel value,
          $Res Function(FetchAdminsResponseModel) then) =
      _$FetchAdminsResponseModelCopyWithImpl<$Res, FetchAdminsResponseModel>;
  @useResult
  $Res call(
      {String message,
      List<AdminModel> data,
      String duration,
      String method,
      int statusCode});
}

/// @nodoc
class _$FetchAdminsResponseModelCopyWithImpl<$Res,
        $Val extends FetchAdminsResponseModel>
    implements $FetchAdminsResponseModelCopyWith<$Res> {
  _$FetchAdminsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<AdminModel>,
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
abstract class _$$FetchAdminsResponseModelImplCopyWith<$Res>
    implements $FetchAdminsResponseModelCopyWith<$Res> {
  factory _$$FetchAdminsResponseModelImplCopyWith(
          _$FetchAdminsResponseModelImpl value,
          $Res Function(_$FetchAdminsResponseModelImpl) then) =
      __$$FetchAdminsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      List<AdminModel> data,
      String duration,
      String method,
      int statusCode});
}

/// @nodoc
class __$$FetchAdminsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchAdminsResponseModelCopyWithImpl<$Res,
        _$FetchAdminsResponseModelImpl>
    implements _$$FetchAdminsResponseModelImplCopyWith<$Res> {
  __$$FetchAdminsResponseModelImplCopyWithImpl(
      _$FetchAdminsResponseModelImpl _value,
      $Res Function(_$FetchAdminsResponseModelImpl) _then)
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
    return _then(_$FetchAdminsResponseModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AdminModel>,
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
class _$FetchAdminsResponseModelImpl implements _FetchAdminsResponseModel {
  const _$FetchAdminsResponseModelImpl(
      {this.message = '',
      final List<AdminModel> data = const [],
      this.duration = '',
      this.method = '',
      this.statusCode = 0})
      : _data = data;

  factory _$FetchAdminsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchAdminsResponseModelImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  final List<AdminModel> _data;
  @override
  @JsonKey()
  List<AdminModel> get data {
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
    return 'FetchAdminsResponseModel(message: $message, data: $data, duration: $duration, method: $method, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAdminsResponseModelImpl &&
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
  _$$FetchAdminsResponseModelImplCopyWith<_$FetchAdminsResponseModelImpl>
      get copyWith => __$$FetchAdminsResponseModelImplCopyWithImpl<
          _$FetchAdminsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchAdminsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchAdminsResponseModel implements FetchAdminsResponseModel {
  const factory _FetchAdminsResponseModel(
      {final String message,
      final List<AdminModel> data,
      final String duration,
      final String method,
      final int statusCode}) = _$FetchAdminsResponseModelImpl;

  factory _FetchAdminsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchAdminsResponseModelImpl.fromJson;

  @override
  String get message;
  @override
  List<AdminModel> get data;
  @override
  String get duration;
  @override
  String get method;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$FetchAdminsResponseModelImplCopyWith<_$FetchAdminsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
