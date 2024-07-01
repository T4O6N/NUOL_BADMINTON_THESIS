// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseBookingModel _$ResponseBookingModelFromJson(Map<String, dynamic> json) {
  return _ResponseBookingModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseBookingModel {
  String get message => throw _privateConstructorUsedError;
  ResponseBookingDetailModel get data => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBookingModelCopyWith<ResponseBookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBookingModelCopyWith<$Res> {
  factory $ResponseBookingModelCopyWith(ResponseBookingModel value,
          $Res Function(ResponseBookingModel) then) =
      _$ResponseBookingModelCopyWithImpl<$Res, ResponseBookingModel>;
  @useResult
  $Res call(
      {String message,
      ResponseBookingDetailModel data,
      String duration,
      String method,
      int statusCode});

  $ResponseBookingDetailModelCopyWith<$Res> get data;
}

/// @nodoc
class _$ResponseBookingModelCopyWithImpl<$Res,
        $Val extends ResponseBookingModel>
    implements $ResponseBookingModelCopyWith<$Res> {
  _$ResponseBookingModelCopyWithImpl(this._value, this._then);

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
              as ResponseBookingDetailModel,
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
  $ResponseBookingDetailModelCopyWith<$Res> get data {
    return $ResponseBookingDetailModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseBookingModelImplCopyWith<$Res>
    implements $ResponseBookingModelCopyWith<$Res> {
  factory _$$ResponseBookingModelImplCopyWith(_$ResponseBookingModelImpl value,
          $Res Function(_$ResponseBookingModelImpl) then) =
      __$$ResponseBookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      ResponseBookingDetailModel data,
      String duration,
      String method,
      int statusCode});

  @override
  $ResponseBookingDetailModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResponseBookingModelImplCopyWithImpl<$Res>
    extends _$ResponseBookingModelCopyWithImpl<$Res, _$ResponseBookingModelImpl>
    implements _$$ResponseBookingModelImplCopyWith<$Res> {
  __$$ResponseBookingModelImplCopyWithImpl(_$ResponseBookingModelImpl _value,
      $Res Function(_$ResponseBookingModelImpl) _then)
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
    return _then(_$ResponseBookingModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResponseBookingDetailModel,
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
class _$ResponseBookingModelImpl implements _ResponseBookingModel {
  const _$ResponseBookingModelImpl(
      {this.message = '',
      this.data = const ResponseBookingDetailModel(),
      this.duration = '',
      this.method = '',
      this.statusCode = 0});

  factory _$ResponseBookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseBookingModelImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final ResponseBookingDetailModel data;
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
    return 'ResponseBookingModel(message: $message, data: $data, duration: $duration, method: $method, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBookingModelImpl &&
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
  _$$ResponseBookingModelImplCopyWith<_$ResponseBookingModelImpl>
      get copyWith =>
          __$$ResponseBookingModelImplCopyWithImpl<_$ResponseBookingModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBookingModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseBookingModel implements ResponseBookingModel {
  const factory _ResponseBookingModel(
      {final String message,
      final ResponseBookingDetailModel data,
      final String duration,
      final String method,
      final int statusCode}) = _$ResponseBookingModelImpl;

  factory _ResponseBookingModel.fromJson(Map<String, dynamic> json) =
      _$ResponseBookingModelImpl.fromJson;

  @override
  String get message;
  @override
  ResponseBookingDetailModel get data;
  @override
  String get duration;
  @override
  String get method;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBookingModelImplCopyWith<_$ResponseBookingModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
