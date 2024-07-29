// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_daily_income_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDailyIncomeReport _$ResponseDailyIncomeReportFromJson(
    Map<String, dynamic> json) {
  return _ResponseDailyIncomeReport.fromJson(json);
}

/// @nodoc
mixin _$ResponseDailyIncomeReport {
  String get message => throw _privateConstructorUsedError;
  DailyIncomeData get data => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDailyIncomeReportCopyWith<ResponseDailyIncomeReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDailyIncomeReportCopyWith<$Res> {
  factory $ResponseDailyIncomeReportCopyWith(ResponseDailyIncomeReport value,
          $Res Function(ResponseDailyIncomeReport) then) =
      _$ResponseDailyIncomeReportCopyWithImpl<$Res, ResponseDailyIncomeReport>;
  @useResult
  $Res call(
      {String message,
      DailyIncomeData data,
      String duration,
      String method,
      int statusCode});

  $DailyIncomeDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ResponseDailyIncomeReportCopyWithImpl<$Res,
        $Val extends ResponseDailyIncomeReport>
    implements $ResponseDailyIncomeReportCopyWith<$Res> {
  _$ResponseDailyIncomeReportCopyWithImpl(this._value, this._then);

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
              as DailyIncomeData,
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
  $DailyIncomeDataCopyWith<$Res> get data {
    return $DailyIncomeDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseDailyIncomeReportImplCopyWith<$Res>
    implements $ResponseDailyIncomeReportCopyWith<$Res> {
  factory _$$ResponseDailyIncomeReportImplCopyWith(
          _$ResponseDailyIncomeReportImpl value,
          $Res Function(_$ResponseDailyIncomeReportImpl) then) =
      __$$ResponseDailyIncomeReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      DailyIncomeData data,
      String duration,
      String method,
      int statusCode});

  @override
  $DailyIncomeDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResponseDailyIncomeReportImplCopyWithImpl<$Res>
    extends _$ResponseDailyIncomeReportCopyWithImpl<$Res,
        _$ResponseDailyIncomeReportImpl>
    implements _$$ResponseDailyIncomeReportImplCopyWith<$Res> {
  __$$ResponseDailyIncomeReportImplCopyWithImpl(
      _$ResponseDailyIncomeReportImpl _value,
      $Res Function(_$ResponseDailyIncomeReportImpl) _then)
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
    return _then(_$ResponseDailyIncomeReportImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DailyIncomeData,
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
class _$ResponseDailyIncomeReportImpl implements _ResponseDailyIncomeReport {
  const _$ResponseDailyIncomeReportImpl(
      {this.message = '',
      this.data = const DailyIncomeData(),
      this.duration = '',
      this.method = '',
      this.statusCode = 0});

  factory _$ResponseDailyIncomeReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDailyIncomeReportImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final DailyIncomeData data;
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
    return 'ResponseDailyIncomeReport(message: $message, data: $data, duration: $duration, method: $method, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDailyIncomeReportImpl &&
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
  _$$ResponseDailyIncomeReportImplCopyWith<_$ResponseDailyIncomeReportImpl>
      get copyWith => __$$ResponseDailyIncomeReportImplCopyWithImpl<
          _$ResponseDailyIncomeReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDailyIncomeReportImplToJson(
      this,
    );
  }
}

abstract class _ResponseDailyIncomeReport implements ResponseDailyIncomeReport {
  const factory _ResponseDailyIncomeReport(
      {final String message,
      final DailyIncomeData data,
      final String duration,
      final String method,
      final int statusCode}) = _$ResponseDailyIncomeReportImpl;

  factory _ResponseDailyIncomeReport.fromJson(Map<String, dynamic> json) =
      _$ResponseDailyIncomeReportImpl.fromJson;

  @override
  String get message;
  @override
  DailyIncomeData get data;
  @override
  String get duration;
  @override
  String get method;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDailyIncomeReportImplCopyWith<_$ResponseDailyIncomeReportImpl>
      get copyWith => throw _privateConstructorUsedError;
}
