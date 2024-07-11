// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_create_owner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCreateOwnerModel _$ResponseCreateOwnerModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseCreateOwnerModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseCreateOwnerModel {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  OwnerModel get data => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  String get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "method")
  String get method => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCode")
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCreateOwnerModelCopyWith<ResponseCreateOwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCreateOwnerModelCopyWith<$Res> {
  factory $ResponseCreateOwnerModelCopyWith(ResponseCreateOwnerModel value,
          $Res Function(ResponseCreateOwnerModel) then) =
      _$ResponseCreateOwnerModelCopyWithImpl<$Res, ResponseCreateOwnerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "data") OwnerModel data,
      @JsonKey(name: "duration") String duration,
      @JsonKey(name: "method") String method,
      @JsonKey(name: "statusCode") int statusCode});

  $OwnerModelCopyWith<$Res> get data;
}

/// @nodoc
class _$ResponseCreateOwnerModelCopyWithImpl<$Res,
        $Val extends ResponseCreateOwnerModel>
    implements $ResponseCreateOwnerModelCopyWith<$Res> {
  _$ResponseCreateOwnerModelCopyWithImpl(this._value, this._then);

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
              as OwnerModel,
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
  $OwnerModelCopyWith<$Res> get data {
    return $OwnerModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseCreateOwnerModelImplCopyWith<$Res>
    implements $ResponseCreateOwnerModelCopyWith<$Res> {
  factory _$$ResponseCreateOwnerModelImplCopyWith(
          _$ResponseCreateOwnerModelImpl value,
          $Res Function(_$ResponseCreateOwnerModelImpl) then) =
      __$$ResponseCreateOwnerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "data") OwnerModel data,
      @JsonKey(name: "duration") String duration,
      @JsonKey(name: "method") String method,
      @JsonKey(name: "statusCode") int statusCode});

  @override
  $OwnerModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResponseCreateOwnerModelImplCopyWithImpl<$Res>
    extends _$ResponseCreateOwnerModelCopyWithImpl<$Res,
        _$ResponseCreateOwnerModelImpl>
    implements _$$ResponseCreateOwnerModelImplCopyWith<$Res> {
  __$$ResponseCreateOwnerModelImplCopyWithImpl(
      _$ResponseCreateOwnerModelImpl _value,
      $Res Function(_$ResponseCreateOwnerModelImpl) _then)
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
    return _then(_$ResponseCreateOwnerModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OwnerModel,
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
class _$ResponseCreateOwnerModelImpl implements _ResponseCreateOwnerModel {
  const _$ResponseCreateOwnerModelImpl(
      {@JsonKey(name: "message") this.message = "",
      @JsonKey(name: "data") this.data = const OwnerModel(),
      @JsonKey(name: "duration") this.duration = "",
      @JsonKey(name: "method") this.method = "",
      @JsonKey(name: "statusCode") this.statusCode = 0});

  factory _$ResponseCreateOwnerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCreateOwnerModelImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final OwnerModel data;
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
    return 'ResponseCreateOwnerModel(message: $message, data: $data, duration: $duration, method: $method, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCreateOwnerModelImpl &&
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
  _$$ResponseCreateOwnerModelImplCopyWith<_$ResponseCreateOwnerModelImpl>
      get copyWith => __$$ResponseCreateOwnerModelImplCopyWithImpl<
          _$ResponseCreateOwnerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCreateOwnerModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseCreateOwnerModel implements ResponseCreateOwnerModel {
  const factory _ResponseCreateOwnerModel(
          {@JsonKey(name: "message") final String message,
          @JsonKey(name: "data") final OwnerModel data,
          @JsonKey(name: "duration") final String duration,
          @JsonKey(name: "method") final String method,
          @JsonKey(name: "statusCode") final int statusCode}) =
      _$ResponseCreateOwnerModelImpl;

  factory _ResponseCreateOwnerModel.fromJson(Map<String, dynamic> json) =
      _$ResponseCreateOwnerModelImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  OwnerModel get data;
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
  _$$ResponseCreateOwnerModelImplCopyWith<_$ResponseCreateOwnerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
