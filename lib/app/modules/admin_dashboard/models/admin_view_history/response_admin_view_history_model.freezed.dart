// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_admin_view_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseAdminViewHistory _$ResponseAdminViewHistoryFromJson(
    Map<String, dynamic> json) {
  return _ResponseAdminViewHistory.fromJson(json);
}

/// @nodoc
mixin _$ResponseAdminViewHistory {
  String get message => throw _privateConstructorUsedError;
  ResponseAdminViewHistoryData get data => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseAdminViewHistoryCopyWith<ResponseAdminViewHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseAdminViewHistoryCopyWith<$Res> {
  factory $ResponseAdminViewHistoryCopyWith(ResponseAdminViewHistory value,
          $Res Function(ResponseAdminViewHistory) then) =
      _$ResponseAdminViewHistoryCopyWithImpl<$Res, ResponseAdminViewHistory>;
  @useResult
  $Res call(
      {String message,
      ResponseAdminViewHistoryData data,
      String duration,
      String method,
      int statusCode});

  $ResponseAdminViewHistoryDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ResponseAdminViewHistoryCopyWithImpl<$Res,
        $Val extends ResponseAdminViewHistory>
    implements $ResponseAdminViewHistoryCopyWith<$Res> {
  _$ResponseAdminViewHistoryCopyWithImpl(this._value, this._then);

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
              as ResponseAdminViewHistoryData,
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

  @override
  @pragma('vm:prefer-inline')
  $ResponseAdminViewHistoryDataCopyWith<$Res> get data {
    return $ResponseAdminViewHistoryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseAdminViewHistoryImplCopyWith<$Res>
    implements $ResponseAdminViewHistoryCopyWith<$Res> {
  factory _$$ResponseAdminViewHistoryImplCopyWith(
          _$ResponseAdminViewHistoryImpl value,
          $Res Function(_$ResponseAdminViewHistoryImpl) then) =
      __$$ResponseAdminViewHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      ResponseAdminViewHistoryData data,
      String duration,
      String method,
      int statusCode});

  @override
  $ResponseAdminViewHistoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResponseAdminViewHistoryImplCopyWithImpl<$Res>
    extends _$ResponseAdminViewHistoryCopyWithImpl<$Res,
        _$ResponseAdminViewHistoryImpl>
    implements _$$ResponseAdminViewHistoryImplCopyWith<$Res> {
  __$$ResponseAdminViewHistoryImplCopyWithImpl(
      _$ResponseAdminViewHistoryImpl _value,
      $Res Function(_$ResponseAdminViewHistoryImpl) _then)
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
    return _then(_$ResponseAdminViewHistoryImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResponseAdminViewHistoryData,
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
class _$ResponseAdminViewHistoryImpl implements _ResponseAdminViewHistory {
  const _$ResponseAdminViewHistoryImpl(
      {this.message = '',
      this.data = const ResponseAdminViewHistoryData(),
      this.duration = '',
      this.method = '',
      this.statusCode = 0});

  factory _$ResponseAdminViewHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseAdminViewHistoryImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final ResponseAdminViewHistoryData data;
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
    return 'ResponseAdminViewHistory(message: $message, data: $data, duration: $duration, method: $method, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseAdminViewHistoryImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, data, duration, method, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseAdminViewHistoryImplCopyWith<_$ResponseAdminViewHistoryImpl>
      get copyWith => __$$ResponseAdminViewHistoryImplCopyWithImpl<
          _$ResponseAdminViewHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseAdminViewHistoryImplToJson(
      this,
    );
  }
}

abstract class _ResponseAdminViewHistory implements ResponseAdminViewHistory {
  const factory _ResponseAdminViewHistory(
      {final String message,
      final ResponseAdminViewHistoryData data,
      final String duration,
      final String method,
      final int statusCode}) = _$ResponseAdminViewHistoryImpl;

  factory _ResponseAdminViewHistory.fromJson(Map<String, dynamic> json) =
      _$ResponseAdminViewHistoryImpl.fromJson;

  @override
  String get message;
  @override
  ResponseAdminViewHistoryData get data;
  @override
  String get duration;
  @override
  String get method;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ResponseAdminViewHistoryImplCopyWith<_$ResponseAdminViewHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
