// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_find_many_payment_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseFindManyPaymentHistoryModel
    _$ResponseFindManyPaymentHistoryModelFromJson(Map<String, dynamic> json) {
  return _ResponseFindManyPaymentHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseFindManyPaymentHistoryModel {
  String get message => throw _privateConstructorUsedError;
  List<ResponseFindManyPaymentHistoryDataModel> get data =>
      throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseFindManyPaymentHistoryModelCopyWith<
          ResponseFindManyPaymentHistoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseFindManyPaymentHistoryModelCopyWith<$Res> {
  factory $ResponseFindManyPaymentHistoryModelCopyWith(
          ResponseFindManyPaymentHistoryModel value,
          $Res Function(ResponseFindManyPaymentHistoryModel) then) =
      _$ResponseFindManyPaymentHistoryModelCopyWithImpl<$Res,
          ResponseFindManyPaymentHistoryModel>;
  @useResult
  $Res call(
      {String message,
      List<ResponseFindManyPaymentHistoryDataModel> data,
      String duration,
      String method,
      int statusCode});
}

/// @nodoc
class _$ResponseFindManyPaymentHistoryModelCopyWithImpl<$Res,
        $Val extends ResponseFindManyPaymentHistoryModel>
    implements $ResponseFindManyPaymentHistoryModelCopyWith<$Res> {
  _$ResponseFindManyPaymentHistoryModelCopyWithImpl(this._value, this._then);

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
              as List<ResponseFindManyPaymentHistoryDataModel>,
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
abstract class _$$ResponseFindManyPaymentHistoryModelImplCopyWith<$Res>
    implements $ResponseFindManyPaymentHistoryModelCopyWith<$Res> {
  factory _$$ResponseFindManyPaymentHistoryModelImplCopyWith(
          _$ResponseFindManyPaymentHistoryModelImpl value,
          $Res Function(_$ResponseFindManyPaymentHistoryModelImpl) then) =
      __$$ResponseFindManyPaymentHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      List<ResponseFindManyPaymentHistoryDataModel> data,
      String duration,
      String method,
      int statusCode});
}

/// @nodoc
class __$$ResponseFindManyPaymentHistoryModelImplCopyWithImpl<$Res>
    extends _$ResponseFindManyPaymentHistoryModelCopyWithImpl<$Res,
        _$ResponseFindManyPaymentHistoryModelImpl>
    implements _$$ResponseFindManyPaymentHistoryModelImplCopyWith<$Res> {
  __$$ResponseFindManyPaymentHistoryModelImplCopyWithImpl(
      _$ResponseFindManyPaymentHistoryModelImpl _value,
      $Res Function(_$ResponseFindManyPaymentHistoryModelImpl) _then)
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
    return _then(_$ResponseFindManyPaymentHistoryModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ResponseFindManyPaymentHistoryDataModel>,
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
class _$ResponseFindManyPaymentHistoryModelImpl
    implements _ResponseFindManyPaymentHistoryModel {
  const _$ResponseFindManyPaymentHistoryModelImpl(
      {this.message = "",
      final List<ResponseFindManyPaymentHistoryDataModel> data = const [],
      this.duration = "",
      this.method = "",
      this.statusCode = 0})
      : _data = data;

  factory _$ResponseFindManyPaymentHistoryModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseFindManyPaymentHistoryModelImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  final List<ResponseFindManyPaymentHistoryDataModel> _data;
  @override
  @JsonKey()
  List<ResponseFindManyPaymentHistoryDataModel> get data {
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
    return 'ResponseFindManyPaymentHistoryModel(message: $message, data: $data, duration: $duration, method: $method, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseFindManyPaymentHistoryModelImpl &&
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
  _$$ResponseFindManyPaymentHistoryModelImplCopyWith<
          _$ResponseFindManyPaymentHistoryModelImpl>
      get copyWith => __$$ResponseFindManyPaymentHistoryModelImplCopyWithImpl<
          _$ResponseFindManyPaymentHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseFindManyPaymentHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseFindManyPaymentHistoryModel
    implements ResponseFindManyPaymentHistoryModel {
  const factory _ResponseFindManyPaymentHistoryModel(
      {final String message,
      final List<ResponseFindManyPaymentHistoryDataModel> data,
      final String duration,
      final String method,
      final int statusCode}) = _$ResponseFindManyPaymentHistoryModelImpl;

  factory _ResponseFindManyPaymentHistoryModel.fromJson(
          Map<String, dynamic> json) =
      _$ResponseFindManyPaymentHistoryModelImpl.fromJson;

  @override
  String get message;
  @override
  List<ResponseFindManyPaymentHistoryDataModel> get data;
  @override
  String get duration;
  @override
  String get method;
  @override
  int get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ResponseFindManyPaymentHistoryModelImplCopyWith<
          _$ResponseFindManyPaymentHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
