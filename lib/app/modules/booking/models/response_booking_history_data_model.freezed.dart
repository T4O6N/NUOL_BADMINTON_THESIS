// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_booking_history_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseBookingHistoryDataModel _$ResponseBookingHistoryDataModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseBookingHistoryDataModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseBookingHistoryDataModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'court_booking_id')
  String get courtBookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'court_booking')
  ResponseBookingDataModel get courtBooking =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBookingHistoryDataModelCopyWith<ResponseBookingHistoryDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBookingHistoryDataModelCopyWith<$Res> {
  factory $ResponseBookingHistoryDataModelCopyWith(
          ResponseBookingHistoryDataModel value,
          $Res Function(ResponseBookingHistoryDataModel) then) =
      _$ResponseBookingHistoryDataModelCopyWithImpl<$Res,
          ResponseBookingHistoryDataModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'court_booking_id') String courtBookingId,
      @JsonKey(name: 'court_booking') ResponseBookingDataModel courtBooking});

  $ResponseBookingDataModelCopyWith<$Res> get courtBooking;
}

/// @nodoc
class _$ResponseBookingHistoryDataModelCopyWithImpl<$Res,
        $Val extends ResponseBookingHistoryDataModel>
    implements $ResponseBookingHistoryDataModelCopyWith<$Res> {
  _$ResponseBookingHistoryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deviceId = null,
    Object? courtBookingId = null,
    Object? courtBooking = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      courtBookingId: null == courtBookingId
          ? _value.courtBookingId
          : courtBookingId // ignore: cast_nullable_to_non_nullable
              as String,
      courtBooking: null == courtBooking
          ? _value.courtBooking
          : courtBooking // ignore: cast_nullable_to_non_nullable
              as ResponseBookingDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseBookingDataModelCopyWith<$Res> get courtBooking {
    return $ResponseBookingDataModelCopyWith<$Res>(_value.courtBooking,
        (value) {
      return _then(_value.copyWith(courtBooking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseBookingHistoryDataModelImplCopyWith<$Res>
    implements $ResponseBookingHistoryDataModelCopyWith<$Res> {
  factory _$$ResponseBookingHistoryDataModelImplCopyWith(
          _$ResponseBookingHistoryDataModelImpl value,
          $Res Function(_$ResponseBookingHistoryDataModelImpl) then) =
      __$$ResponseBookingHistoryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'court_booking_id') String courtBookingId,
      @JsonKey(name: 'court_booking') ResponseBookingDataModel courtBooking});

  @override
  $ResponseBookingDataModelCopyWith<$Res> get courtBooking;
}

/// @nodoc
class __$$ResponseBookingHistoryDataModelImplCopyWithImpl<$Res>
    extends _$ResponseBookingHistoryDataModelCopyWithImpl<$Res,
        _$ResponseBookingHistoryDataModelImpl>
    implements _$$ResponseBookingHistoryDataModelImplCopyWith<$Res> {
  __$$ResponseBookingHistoryDataModelImplCopyWithImpl(
      _$ResponseBookingHistoryDataModelImpl _value,
      $Res Function(_$ResponseBookingHistoryDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deviceId = null,
    Object? courtBookingId = null,
    Object? courtBooking = null,
  }) {
    return _then(_$ResponseBookingHistoryDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      courtBookingId: null == courtBookingId
          ? _value.courtBookingId
          : courtBookingId // ignore: cast_nullable_to_non_nullable
              as String,
      courtBooking: null == courtBooking
          ? _value.courtBooking
          : courtBooking // ignore: cast_nullable_to_non_nullable
              as ResponseBookingDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBookingHistoryDataModelImpl
    implements _ResponseBookingHistoryDataModel {
  const _$ResponseBookingHistoryDataModelImpl(
      {this.id = "",
      @JsonKey(name: 'created_at') this.createdAt = "",
      @JsonKey(name: 'updated_at') this.updatedAt = "",
      @JsonKey(name: 'device_id') this.deviceId = "",
      @JsonKey(name: 'court_booking_id') this.courtBookingId = "",
      @JsonKey(name: 'court_booking') required this.courtBooking});

  factory _$ResponseBookingHistoryDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseBookingHistoryDataModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'device_id')
  final String deviceId;
  @override
  @JsonKey(name: 'court_booking_id')
  final String courtBookingId;
  @override
  @JsonKey(name: 'court_booking')
  final ResponseBookingDataModel courtBooking;

  @override
  String toString() {
    return 'ResponseBookingHistoryDataModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deviceId: $deviceId, courtBookingId: $courtBookingId, courtBooking: $courtBooking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBookingHistoryDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.courtBookingId, courtBookingId) ||
                other.courtBookingId == courtBookingId) &&
            (identical(other.courtBooking, courtBooking) ||
                other.courtBooking == courtBooking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt,
      deviceId, courtBookingId, courtBooking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseBookingHistoryDataModelImplCopyWith<
          _$ResponseBookingHistoryDataModelImpl>
      get copyWith => __$$ResponseBookingHistoryDataModelImplCopyWithImpl<
          _$ResponseBookingHistoryDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBookingHistoryDataModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseBookingHistoryDataModel
    implements ResponseBookingHistoryDataModel {
  const factory _ResponseBookingHistoryDataModel(
          {final String id,
          @JsonKey(name: 'created_at') final String createdAt,
          @JsonKey(name: 'updated_at') final String updatedAt,
          @JsonKey(name: 'device_id') final String deviceId,
          @JsonKey(name: 'court_booking_id') final String courtBookingId,
          @JsonKey(name: 'court_booking')
          required final ResponseBookingDataModel courtBooking}) =
      _$ResponseBookingHistoryDataModelImpl;

  factory _ResponseBookingHistoryDataModel.fromJson(Map<String, dynamic> json) =
      _$ResponseBookingHistoryDataModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'device_id')
  String get deviceId;
  @override
  @JsonKey(name: 'court_booking_id')
  String get courtBookingId;
  @override
  @JsonKey(name: 'court_booking')
  ResponseBookingDataModel get courtBooking;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBookingHistoryDataModelImplCopyWith<
          _$ResponseBookingHistoryDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
