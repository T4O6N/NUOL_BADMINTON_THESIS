// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_booking_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseBookingHistoryModel _$ResponseBookingHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseBookingHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseBookingHistoryModel {
  String get message => throw _privateConstructorUsedError;
  List<ResponseBookingHistoryDataModel> get data =>
      throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBookingHistoryModelCopyWith<ResponseBookingHistoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBookingHistoryModelCopyWith<$Res> {
  factory $ResponseBookingHistoryModelCopyWith(
          ResponseBookingHistoryModel value,
          $Res Function(ResponseBookingHistoryModel) then) =
      _$ResponseBookingHistoryModelCopyWithImpl<$Res,
          ResponseBookingHistoryModel>;
  @useResult
  $Res call(
      {String message,
      List<ResponseBookingHistoryDataModel> data,
      String duration,
      String method,
      int statusCode});
}

/// @nodoc
class _$ResponseBookingHistoryModelCopyWithImpl<$Res,
        $Val extends ResponseBookingHistoryModel>
    implements $ResponseBookingHistoryModelCopyWith<$Res> {
  _$ResponseBookingHistoryModelCopyWithImpl(this._value, this._then);

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
              as List<ResponseBookingHistoryDataModel>,
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
abstract class _$$ResponseBookingHistoryModelImplCopyWith<$Res>
    implements $ResponseBookingHistoryModelCopyWith<$Res> {
  factory _$$ResponseBookingHistoryModelImplCopyWith(
          _$ResponseBookingHistoryModelImpl value,
          $Res Function(_$ResponseBookingHistoryModelImpl) then) =
      __$$ResponseBookingHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      List<ResponseBookingHistoryDataModel> data,
      String duration,
      String method,
      int statusCode});
}

/// @nodoc
class __$$ResponseBookingHistoryModelImplCopyWithImpl<$Res>
    extends _$ResponseBookingHistoryModelCopyWithImpl<$Res,
        _$ResponseBookingHistoryModelImpl>
    implements _$$ResponseBookingHistoryModelImplCopyWith<$Res> {
  __$$ResponseBookingHistoryModelImplCopyWithImpl(
      _$ResponseBookingHistoryModelImpl _value,
      $Res Function(_$ResponseBookingHistoryModelImpl) _then)
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
    return _then(_$ResponseBookingHistoryModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ResponseBookingHistoryDataModel>,
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
class _$ResponseBookingHistoryModelImpl
    implements _ResponseBookingHistoryModel {
  const _$ResponseBookingHistoryModelImpl(
      {this.message = "",
      final List<ResponseBookingHistoryDataModel> data = const [],
      this.duration = "",
      this.method = "",
      this.statusCode = 0})
      : _data = data;

  factory _$ResponseBookingHistoryModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseBookingHistoryModelImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  final List<ResponseBookingHistoryDataModel> _data;
  @override
  @JsonKey()
  List<ResponseBookingHistoryDataModel> get data {
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
    return 'ResponseBookingHistoryModel(message: $message, data: $data, duration: $duration, method: $method, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBookingHistoryModelImpl &&
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
  _$$ResponseBookingHistoryModelImplCopyWith<_$ResponseBookingHistoryModelImpl>
      get copyWith => __$$ResponseBookingHistoryModelImplCopyWithImpl<
          _$ResponseBookingHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBookingHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseBookingHistoryModel
    implements ResponseBookingHistoryModel {
  const factory _ResponseBookingHistoryModel(
      {final String message,
      final List<ResponseBookingHistoryDataModel> data,
      final String duration,
      final String method,
      final int statusCode}) = _$ResponseBookingHistoryModelImpl;

  factory _ResponseBookingHistoryModel.fromJson(Map<String, dynamic> json) =
      _$ResponseBookingHistoryModelImpl.fromJson;

  @override
  String get message;
  @override
  List<ResponseBookingHistoryDataModel> get data;
  @override
  String get duration;
  @override
  String get method;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBookingHistoryModelImplCopyWith<_$ResponseBookingHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
