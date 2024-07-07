// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_find_one_history_booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseFindOneHistoryBookingModel _$ResponseFindOneHistoryBookingModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseFindOneHistoryBookingModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseFindOneHistoryBookingModel {
  String get message => throw _privateConstructorUsedError;
  ResponseFindOneHistoryBookingDataModel get data =>
      throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseFindOneHistoryBookingModelCopyWith<
          ResponseFindOneHistoryBookingModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseFindOneHistoryBookingModelCopyWith<$Res> {
  factory $ResponseFindOneHistoryBookingModelCopyWith(
          ResponseFindOneHistoryBookingModel value,
          $Res Function(ResponseFindOneHistoryBookingModel) then) =
      _$ResponseFindOneHistoryBookingModelCopyWithImpl<$Res,
          ResponseFindOneHistoryBookingModel>;
  @useResult
  $Res call(
      {String message,
      ResponseFindOneHistoryBookingDataModel data,
      String duration,
      String method,
      int statusCode});

  $ResponseFindOneHistoryBookingDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$ResponseFindOneHistoryBookingModelCopyWithImpl<$Res,
        $Val extends ResponseFindOneHistoryBookingModel>
    implements $ResponseFindOneHistoryBookingModelCopyWith<$Res> {
  _$ResponseFindOneHistoryBookingModelCopyWithImpl(this._value, this._then);

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
              as ResponseFindOneHistoryBookingDataModel,
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
  $ResponseFindOneHistoryBookingDataModelCopyWith<$Res> get data {
    return $ResponseFindOneHistoryBookingDataModelCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseFindOneHistoryBookingModelImplCopyWith<$Res>
    implements $ResponseFindOneHistoryBookingModelCopyWith<$Res> {
  factory _$$ResponseFindOneHistoryBookingModelImplCopyWith(
          _$ResponseFindOneHistoryBookingModelImpl value,
          $Res Function(_$ResponseFindOneHistoryBookingModelImpl) then) =
      __$$ResponseFindOneHistoryBookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      ResponseFindOneHistoryBookingDataModel data,
      String duration,
      String method,
      int statusCode});

  @override
  $ResponseFindOneHistoryBookingDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResponseFindOneHistoryBookingModelImplCopyWithImpl<$Res>
    extends _$ResponseFindOneHistoryBookingModelCopyWithImpl<$Res,
        _$ResponseFindOneHistoryBookingModelImpl>
    implements _$$ResponseFindOneHistoryBookingModelImplCopyWith<$Res> {
  __$$ResponseFindOneHistoryBookingModelImplCopyWithImpl(
      _$ResponseFindOneHistoryBookingModelImpl _value,
      $Res Function(_$ResponseFindOneHistoryBookingModelImpl) _then)
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
    return _then(_$ResponseFindOneHistoryBookingModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResponseFindOneHistoryBookingDataModel,
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
class _$ResponseFindOneHistoryBookingModelImpl
    implements _ResponseFindOneHistoryBookingModel {
  const _$ResponseFindOneHistoryBookingModelImpl(
      {this.message = "",
      this.data = const ResponseFindOneHistoryBookingDataModel(),
      this.duration = "",
      this.method = "",
      this.statusCode = 0});

  factory _$ResponseFindOneHistoryBookingModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseFindOneHistoryBookingModelImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final ResponseFindOneHistoryBookingDataModel data;
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
    return 'ResponseFindOneHistoryBookingModel(message: $message, data: $data, duration: $duration, method: $method, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseFindOneHistoryBookingModelImpl &&
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
  _$$ResponseFindOneHistoryBookingModelImplCopyWith<
          _$ResponseFindOneHistoryBookingModelImpl>
      get copyWith => __$$ResponseFindOneHistoryBookingModelImplCopyWithImpl<
          _$ResponseFindOneHistoryBookingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseFindOneHistoryBookingModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseFindOneHistoryBookingModel
    implements ResponseFindOneHistoryBookingModel {
  const factory _ResponseFindOneHistoryBookingModel(
      {final String message,
      final ResponseFindOneHistoryBookingDataModel data,
      final String duration,
      final String method,
      final int statusCode}) = _$ResponseFindOneHistoryBookingModelImpl;

  factory _ResponseFindOneHistoryBookingModel.fromJson(
          Map<String, dynamic> json) =
      _$ResponseFindOneHistoryBookingModelImpl.fromJson;

  @override
  String get message;
  @override
  ResponseFindOneHistoryBookingDataModel get data;
  @override
  String get duration;
  @override
  String get method;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ResponseFindOneHistoryBookingModelImplCopyWith<
          _$ResponseFindOneHistoryBookingModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
