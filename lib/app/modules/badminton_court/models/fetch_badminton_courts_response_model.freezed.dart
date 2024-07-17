// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_badminton_courts_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FetchBadmintonCourtsResponseModel _$FetchBadmintonCourtsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchBadmintonCourtsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchBadmintonCourtsResponseModel {
  String get message => throw _privateConstructorUsedError;
  List<BadmintonCourtModel> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  String get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "method")
  String get method => throw _privateConstructorUsedError;
  @JsonKey(name: "statusCode")
  int get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchBadmintonCourtsResponseModelCopyWith<FetchBadmintonCourtsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchBadmintonCourtsResponseModelCopyWith<$Res> {
  factory $FetchBadmintonCourtsResponseModelCopyWith(
          FetchBadmintonCourtsResponseModel value,
          $Res Function(FetchBadmintonCourtsResponseModel) then) =
      _$FetchBadmintonCourtsResponseModelCopyWithImpl<$Res,
          FetchBadmintonCourtsResponseModel>;
  @useResult
  $Res call(
      {String message,
      List<BadmintonCourtModel> data,
      @JsonKey(name: "duration") String duration,
      @JsonKey(name: "method") String method,
      @JsonKey(name: "statusCode") int statusCode});
}

/// @nodoc
class _$FetchBadmintonCourtsResponseModelCopyWithImpl<$Res,
        $Val extends FetchBadmintonCourtsResponseModel>
    implements $FetchBadmintonCourtsResponseModelCopyWith<$Res> {
  _$FetchBadmintonCourtsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<BadmintonCourtModel>,
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
abstract class _$$FetchBadmintonCourtsResponseModelImplCopyWith<$Res>
    implements $FetchBadmintonCourtsResponseModelCopyWith<$Res> {
  factory _$$FetchBadmintonCourtsResponseModelImplCopyWith(
          _$FetchBadmintonCourtsResponseModelImpl value,
          $Res Function(_$FetchBadmintonCourtsResponseModelImpl) then) =
      __$$FetchBadmintonCourtsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      List<BadmintonCourtModel> data,
      @JsonKey(name: "duration") String duration,
      @JsonKey(name: "method") String method,
      @JsonKey(name: "statusCode") int statusCode});
}

/// @nodoc
class __$$FetchBadmintonCourtsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchBadmintonCourtsResponseModelCopyWithImpl<$Res,
        _$FetchBadmintonCourtsResponseModelImpl>
    implements _$$FetchBadmintonCourtsResponseModelImplCopyWith<$Res> {
  __$$FetchBadmintonCourtsResponseModelImplCopyWithImpl(
      _$FetchBadmintonCourtsResponseModelImpl _value,
      $Res Function(_$FetchBadmintonCourtsResponseModelImpl) _then)
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
    return _then(_$FetchBadmintonCourtsResponseModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BadmintonCourtModel>,
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
class _$FetchBadmintonCourtsResponseModelImpl
    implements _FetchBadmintonCourtsResponseModel {
  const _$FetchBadmintonCourtsResponseModelImpl(
      {this.message = '',
      final List<BadmintonCourtModel> data = const [],
      @JsonKey(name: "duration") this.duration = '',
      @JsonKey(name: "method") this.method = '',
      @JsonKey(name: "statusCode") this.statusCode = 0})
      : _data = data;

  factory _$FetchBadmintonCourtsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchBadmintonCourtsResponseModelImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  final List<BadmintonCourtModel> _data;
  @override
  @JsonKey()
  List<BadmintonCourtModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

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
    return 'FetchBadmintonCourtsResponseModel(message: $message, data: $data, duration: $duration, method: $method, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBadmintonCourtsResponseModelImpl &&
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
  _$$FetchBadmintonCourtsResponseModelImplCopyWith<
          _$FetchBadmintonCourtsResponseModelImpl>
      get copyWith => __$$FetchBadmintonCourtsResponseModelImplCopyWithImpl<
          _$FetchBadmintonCourtsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchBadmintonCourtsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchBadmintonCourtsResponseModel
    implements FetchBadmintonCourtsResponseModel {
  const factory _FetchBadmintonCourtsResponseModel(
          {final String message,
          final List<BadmintonCourtModel> data,
          @JsonKey(name: "duration") final String duration,
          @JsonKey(name: "method") final String method,
          @JsonKey(name: "statusCode") final int statusCode}) =
      _$FetchBadmintonCourtsResponseModelImpl;

  factory _FetchBadmintonCourtsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$FetchBadmintonCourtsResponseModelImpl.fromJson;

  @override
  String get message;
  @override
  List<BadmintonCourtModel> get data;
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
  _$$FetchBadmintonCourtsResponseModelImplCopyWith<
          _$FetchBadmintonCourtsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
