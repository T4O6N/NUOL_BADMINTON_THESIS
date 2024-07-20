// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_income_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyIncomeResponse _$WeeklyIncomeResponseFromJson(Map<String, dynamic> json) {
  return _WeeklyIncomeResponse.fromJson(json);
}

/// @nodoc
mixin _$WeeklyIncomeResponse {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  WeeklyIncomeData get data => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  String get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "method")
  String get method => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCode")
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyIncomeResponseCopyWith<WeeklyIncomeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyIncomeResponseCopyWith<$Res> {
  factory $WeeklyIncomeResponseCopyWith(WeeklyIncomeResponse value,
          $Res Function(WeeklyIncomeResponse) then) =
      _$WeeklyIncomeResponseCopyWithImpl<$Res, WeeklyIncomeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "data") WeeklyIncomeData data,
      @JsonKey(name: "duration") String duration,
      @JsonKey(name: "method") String method,
      @JsonKey(name: "statusCode") int statusCode});

  $WeeklyIncomeDataCopyWith<$Res> get data;
}

/// @nodoc
class _$WeeklyIncomeResponseCopyWithImpl<$Res,
        $Val extends WeeklyIncomeResponse>
    implements $WeeklyIncomeResponseCopyWith<$Res> {
  _$WeeklyIncomeResponseCopyWithImpl(this._value, this._then);

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
              as WeeklyIncomeData,
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
  $WeeklyIncomeDataCopyWith<$Res> get data {
    return $WeeklyIncomeDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeeklyIncomeResponseImplCopyWith<$Res>
    implements $WeeklyIncomeResponseCopyWith<$Res> {
  factory _$$WeeklyIncomeResponseImplCopyWith(_$WeeklyIncomeResponseImpl value,
          $Res Function(_$WeeklyIncomeResponseImpl) then) =
      __$$WeeklyIncomeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "data") WeeklyIncomeData data,
      @JsonKey(name: "duration") String duration,
      @JsonKey(name: "method") String method,
      @JsonKey(name: "statusCode") int statusCode});

  @override
  $WeeklyIncomeDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$WeeklyIncomeResponseImplCopyWithImpl<$Res>
    extends _$WeeklyIncomeResponseCopyWithImpl<$Res, _$WeeklyIncomeResponseImpl>
    implements _$$WeeklyIncomeResponseImplCopyWith<$Res> {
  __$$WeeklyIncomeResponseImplCopyWithImpl(_$WeeklyIncomeResponseImpl _value,
      $Res Function(_$WeeklyIncomeResponseImpl) _then)
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
    return _then(_$WeeklyIncomeResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeeklyIncomeData,
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
class _$WeeklyIncomeResponseImpl implements _WeeklyIncomeResponse {
  const _$WeeklyIncomeResponseImpl(
      {@JsonKey(name: "message") this.message = '',
      @JsonKey(name: "data") this.data = const WeeklyIncomeData(),
      @JsonKey(name: "duration") this.duration = '',
      @JsonKey(name: "method") this.method = '',
      @JsonKey(name: "statusCode") this.statusCode = 0});

  factory _$WeeklyIncomeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyIncomeResponseImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final WeeklyIncomeData data;
  @override
  @JsonKey(name: "duration")
  final String duration;
  @override
  @JsonKey(name: "method")
  final String method;
  @override
  @JsonKey(name: "statusCode")
  final int statusCode;

  @override
  String toString() {
    return 'WeeklyIncomeResponse(message: $message, data: $data, duration: $duration, method: $method, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyIncomeResponseImpl &&
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
  _$$WeeklyIncomeResponseImplCopyWith<_$WeeklyIncomeResponseImpl>
      get copyWith =>
          __$$WeeklyIncomeResponseImplCopyWithImpl<_$WeeklyIncomeResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyIncomeResponseImplToJson(
      this,
    );
  }
}

abstract class _WeeklyIncomeResponse implements WeeklyIncomeResponse {
  const factory _WeeklyIncomeResponse(
          {@JsonKey(name: "message") final String message,
          @JsonKey(name: "data") final WeeklyIncomeData data,
          @JsonKey(name: "duration") final String duration,
          @JsonKey(name: "method") final String method,
          @JsonKey(name: "statusCode") final int statusCode}) =
      _$WeeklyIncomeResponseImpl;

  factory _WeeklyIncomeResponse.fromJson(Map<String, dynamic> json) =
      _$WeeklyIncomeResponseImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  WeeklyIncomeData get data;
  @override
  @JsonKey(name: "duration")
  String get duration;
  @override
  @JsonKey(name: "method")
  String get method;
  @override
  @JsonKey(name: "statusCode")
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$WeeklyIncomeResponseImplCopyWith<_$WeeklyIncomeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
