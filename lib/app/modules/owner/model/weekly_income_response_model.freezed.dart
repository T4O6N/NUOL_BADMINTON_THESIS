// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_income_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyIncomeResponseModel _$WeeklyIncomeResponseModelFromJson(
    Map<String, dynamic> json) {
  return _WeeklyIncomeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WeeklyIncomeResponseModel {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataModel get data => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  String get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "method")
  String get method => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCode")
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyIncomeResponseModelCopyWith<WeeklyIncomeResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyIncomeResponseModelCopyWith<$Res> {
  factory $WeeklyIncomeResponseModelCopyWith(WeeklyIncomeResponseModel value,
          $Res Function(WeeklyIncomeResponseModel) then) =
      _$WeeklyIncomeResponseModelCopyWithImpl<$Res, WeeklyIncomeResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "data") DataModel data,
      @JsonKey(name: "duration") String duration,
      @JsonKey(name: "method") String method,
      @JsonKey(name: "statusCode") int statusCode});

  $DataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$WeeklyIncomeResponseModelCopyWithImpl<$Res,
        $Val extends WeeklyIncomeResponseModel>
    implements $WeeklyIncomeResponseModelCopyWith<$Res> {
  _$WeeklyIncomeResponseModelCopyWithImpl(this._value, this._then);

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
              as DataModel,
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
  $DataModelCopyWith<$Res> get data {
    return $DataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeeklyIncomeResponseModelImplCopyWith<$Res>
    implements $WeeklyIncomeResponseModelCopyWith<$Res> {
  factory _$$WeeklyIncomeResponseModelImplCopyWith(
          _$WeeklyIncomeResponseModelImpl value,
          $Res Function(_$WeeklyIncomeResponseModelImpl) then) =
      __$$WeeklyIncomeResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "data") DataModel data,
      @JsonKey(name: "duration") String duration,
      @JsonKey(name: "method") String method,
      @JsonKey(name: "statusCode") int statusCode});

  @override
  $DataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$WeeklyIncomeResponseModelImplCopyWithImpl<$Res>
    extends _$WeeklyIncomeResponseModelCopyWithImpl<$Res,
        _$WeeklyIncomeResponseModelImpl>
    implements _$$WeeklyIncomeResponseModelImplCopyWith<$Res> {
  __$$WeeklyIncomeResponseModelImplCopyWithImpl(
      _$WeeklyIncomeResponseModelImpl _value,
      $Res Function(_$WeeklyIncomeResponseModelImpl) _then)
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
    return _then(_$WeeklyIncomeResponseModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel,
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
class _$WeeklyIncomeResponseModelImpl implements _WeeklyIncomeResponseModel {
  const _$WeeklyIncomeResponseModelImpl(
      {@JsonKey(name: "message") this.message = '',
      @JsonKey(name: "data") this.data = const DataModel(),
      @JsonKey(name: "duration") this.duration = '',
      @JsonKey(name: "method") this.method = '',
      @JsonKey(name: "statusCode") this.statusCode = 0});

  factory _$WeeklyIncomeResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyIncomeResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final DataModel data;
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
    return 'WeeklyIncomeResponseModel(message: $message, data: $data, duration: $duration, method: $method, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyIncomeResponseModelImpl &&
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
  _$$WeeklyIncomeResponseModelImplCopyWith<_$WeeklyIncomeResponseModelImpl>
      get copyWith => __$$WeeklyIncomeResponseModelImplCopyWithImpl<
          _$WeeklyIncomeResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyIncomeResponseModelImplToJson(
      this,
    );
  }
}

abstract class _WeeklyIncomeResponseModel implements WeeklyIncomeResponseModel {
  const factory _WeeklyIncomeResponseModel(
          {@JsonKey(name: "message") final String message,
          @JsonKey(name: "data") final DataModel data,
          @JsonKey(name: "duration") final String duration,
          @JsonKey(name: "method") final String method,
          @JsonKey(name: "statusCode") final int statusCode}) =
      _$WeeklyIncomeResponseModelImpl;

  factory _WeeklyIncomeResponseModel.fromJson(Map<String, dynamic> json) =
      _$WeeklyIncomeResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  DataModel get data;
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
  _$$WeeklyIncomeResponseModelImplCopyWith<_$WeeklyIncomeResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
