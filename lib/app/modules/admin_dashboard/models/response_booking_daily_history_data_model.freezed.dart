// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_booking_daily_history_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseBookingDailyHistoryDataModel
    _$ResponseBookingDailyHistoryDataModelFromJson(Map<String, dynamic> json) {
  return _ResponseBookingDailyHistoryDataModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseBookingDailyHistoryDataModel {
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
  ResponseBookingDailyHistoryBookingModel get courtBooking =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBookingDailyHistoryDataModelCopyWith<
          ResponseBookingDailyHistoryDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBookingDailyHistoryDataModelCopyWith<$Res> {
  factory $ResponseBookingDailyHistoryDataModelCopyWith(
          ResponseBookingDailyHistoryDataModel value,
          $Res Function(ResponseBookingDailyHistoryDataModel) then) =
      _$ResponseBookingDailyHistoryDataModelCopyWithImpl<$Res,
          ResponseBookingDailyHistoryDataModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'court_booking_id') String courtBookingId,
      @JsonKey(name: 'court_booking')
      ResponseBookingDailyHistoryBookingModel courtBooking});

  $ResponseBookingDailyHistoryBookingModelCopyWith<$Res> get courtBooking;
}

/// @nodoc
class _$ResponseBookingDailyHistoryDataModelCopyWithImpl<$Res,
        $Val extends ResponseBookingDailyHistoryDataModel>
    implements $ResponseBookingDailyHistoryDataModelCopyWith<$Res> {
  _$ResponseBookingDailyHistoryDataModelCopyWithImpl(this._value, this._then);

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
              as ResponseBookingDailyHistoryBookingModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseBookingDailyHistoryBookingModelCopyWith<$Res> get courtBooking {
    return $ResponseBookingDailyHistoryBookingModelCopyWith<$Res>(
        _value.courtBooking, (value) {
      return _then(_value.copyWith(courtBooking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseBookingDailyHistoryDataModelImplCopyWith<$Res>
    implements $ResponseBookingDailyHistoryDataModelCopyWith<$Res> {
  factory _$$ResponseBookingDailyHistoryDataModelImplCopyWith(
          _$ResponseBookingDailyHistoryDataModelImpl value,
          $Res Function(_$ResponseBookingDailyHistoryDataModelImpl) then) =
      __$$ResponseBookingDailyHistoryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'court_booking_id') String courtBookingId,
      @JsonKey(name: 'court_booking')
      ResponseBookingDailyHistoryBookingModel courtBooking});

  @override
  $ResponseBookingDailyHistoryBookingModelCopyWith<$Res> get courtBooking;
}

/// @nodoc
class __$$ResponseBookingDailyHistoryDataModelImplCopyWithImpl<$Res>
    extends _$ResponseBookingDailyHistoryDataModelCopyWithImpl<$Res,
        _$ResponseBookingDailyHistoryDataModelImpl>
    implements _$$ResponseBookingDailyHistoryDataModelImplCopyWith<$Res> {
  __$$ResponseBookingDailyHistoryDataModelImplCopyWithImpl(
      _$ResponseBookingDailyHistoryDataModelImpl _value,
      $Res Function(_$ResponseBookingDailyHistoryDataModelImpl) _then)
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
    return _then(_$ResponseBookingDailyHistoryDataModelImpl(
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
              as ResponseBookingDailyHistoryBookingModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBookingDailyHistoryDataModelImpl
    implements _ResponseBookingDailyHistoryDataModel {
  const _$ResponseBookingDailyHistoryDataModelImpl(
      {this.id = '',
      @JsonKey(name: 'created_at') this.createdAt = '',
      @JsonKey(name: 'updated_at') this.updatedAt = '',
      @JsonKey(name: 'device_id') this.deviceId = '',
      @JsonKey(name: 'court_booking_id') this.courtBookingId = '',
      @JsonKey(name: 'court_booking')
      this.courtBooking = const ResponseBookingDailyHistoryBookingModel()});

  factory _$ResponseBookingDailyHistoryDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseBookingDailyHistoryDataModelImplFromJson(json);

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
  final ResponseBookingDailyHistoryBookingModel courtBooking;

  @override
  String toString() {
    return 'ResponseBookingDailyHistoryDataModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deviceId: $deviceId, courtBookingId: $courtBookingId, courtBooking: $courtBooking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBookingDailyHistoryDataModelImpl &&
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
  _$$ResponseBookingDailyHistoryDataModelImplCopyWith<
          _$ResponseBookingDailyHistoryDataModelImpl>
      get copyWith => __$$ResponseBookingDailyHistoryDataModelImplCopyWithImpl<
          _$ResponseBookingDailyHistoryDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBookingDailyHistoryDataModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseBookingDailyHistoryDataModel
    implements ResponseBookingDailyHistoryDataModel {
  const factory _ResponseBookingDailyHistoryDataModel(
          {final String id,
          @JsonKey(name: 'created_at') final String createdAt,
          @JsonKey(name: 'updated_at') final String updatedAt,
          @JsonKey(name: 'device_id') final String deviceId,
          @JsonKey(name: 'court_booking_id') final String courtBookingId,
          @JsonKey(name: 'court_booking')
          final ResponseBookingDailyHistoryBookingModel courtBooking}) =
      _$ResponseBookingDailyHistoryDataModelImpl;

  factory _ResponseBookingDailyHistoryDataModel.fromJson(
          Map<String, dynamic> json) =
      _$ResponseBookingDailyHistoryDataModelImpl.fromJson;

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
  ResponseBookingDailyHistoryBookingModel get courtBooking;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBookingDailyHistoryDataModelImplCopyWith<
          _$ResponseBookingDailyHistoryDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
