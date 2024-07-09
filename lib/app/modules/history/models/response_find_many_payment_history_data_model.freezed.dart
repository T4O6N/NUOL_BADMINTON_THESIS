// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_find_many_payment_history_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseFindManyPaymentHistoryDataModel
    _$ResponseFindManyPaymentHistoryDataModelFromJson(
        Map<String, dynamic> json) {
  return _ResponseFindManyPaymentHistoryDataModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseFindManyPaymentHistoryDataModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_payment_id')
  String get bookingPaymentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'court_available_id')
  String get courtAvailableId => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_payment')
  ResponseBookingPaymentModel get bookingPayment =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'court_available')
  ResponseBookingDataCourtAvailableModel get courtAvailable =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseFindManyPaymentHistoryDataModelCopyWith<
          ResponseFindManyPaymentHistoryDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseFindManyPaymentHistoryDataModelCopyWith<$Res> {
  factory $ResponseFindManyPaymentHistoryDataModelCopyWith(
          ResponseFindManyPaymentHistoryDataModel value,
          $Res Function(ResponseFindManyPaymentHistoryDataModel) then) =
      _$ResponseFindManyPaymentHistoryDataModelCopyWithImpl<$Res,
          ResponseFindManyPaymentHistoryDataModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'booking_payment_id') String bookingPaymentId,
      @JsonKey(name: 'court_available_id') String courtAvailableId,
      @JsonKey(name: 'booking_payment')
      ResponseBookingPaymentModel bookingPayment,
      @JsonKey(name: 'court_available')
      ResponseBookingDataCourtAvailableModel courtAvailable});

  $ResponseBookingPaymentModelCopyWith<$Res> get bookingPayment;
  $ResponseBookingDataCourtAvailableModelCopyWith<$Res> get courtAvailable;
}

/// @nodoc
class _$ResponseFindManyPaymentHistoryDataModelCopyWithImpl<$Res,
        $Val extends ResponseFindManyPaymentHistoryDataModel>
    implements $ResponseFindManyPaymentHistoryDataModelCopyWith<$Res> {
  _$ResponseFindManyPaymentHistoryDataModelCopyWithImpl(
      this._value, this._then);

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
    Object? bookingPaymentId = null,
    Object? courtAvailableId = null,
    Object? bookingPayment = null,
    Object? courtAvailable = null,
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
      bookingPaymentId: null == bookingPaymentId
          ? _value.bookingPaymentId
          : bookingPaymentId // ignore: cast_nullable_to_non_nullable
              as String,
      courtAvailableId: null == courtAvailableId
          ? _value.courtAvailableId
          : courtAvailableId // ignore: cast_nullable_to_non_nullable
              as String,
      bookingPayment: null == bookingPayment
          ? _value.bookingPayment
          : bookingPayment // ignore: cast_nullable_to_non_nullable
              as ResponseBookingPaymentModel,
      courtAvailable: null == courtAvailable
          ? _value.courtAvailable
          : courtAvailable // ignore: cast_nullable_to_non_nullable
              as ResponseBookingDataCourtAvailableModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseBookingPaymentModelCopyWith<$Res> get bookingPayment {
    return $ResponseBookingPaymentModelCopyWith<$Res>(_value.bookingPayment,
        (value) {
      return _then(_value.copyWith(bookingPayment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseBookingDataCourtAvailableModelCopyWith<$Res> get courtAvailable {
    return $ResponseBookingDataCourtAvailableModelCopyWith<$Res>(
        _value.courtAvailable, (value) {
      return _then(_value.copyWith(courtAvailable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseFindManyPaymentHistoryDataModelImplCopyWith<$Res>
    implements $ResponseFindManyPaymentHistoryDataModelCopyWith<$Res> {
  factory _$$ResponseFindManyPaymentHistoryDataModelImplCopyWith(
          _$ResponseFindManyPaymentHistoryDataModelImpl value,
          $Res Function(_$ResponseFindManyPaymentHistoryDataModelImpl) then) =
      __$$ResponseFindManyPaymentHistoryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'booking_payment_id') String bookingPaymentId,
      @JsonKey(name: 'court_available_id') String courtAvailableId,
      @JsonKey(name: 'booking_payment')
      ResponseBookingPaymentModel bookingPayment,
      @JsonKey(name: 'court_available')
      ResponseBookingDataCourtAvailableModel courtAvailable});

  @override
  $ResponseBookingPaymentModelCopyWith<$Res> get bookingPayment;
  @override
  $ResponseBookingDataCourtAvailableModelCopyWith<$Res> get courtAvailable;
}

/// @nodoc
class __$$ResponseFindManyPaymentHistoryDataModelImplCopyWithImpl<$Res>
    extends _$ResponseFindManyPaymentHistoryDataModelCopyWithImpl<$Res,
        _$ResponseFindManyPaymentHistoryDataModelImpl>
    implements _$$ResponseFindManyPaymentHistoryDataModelImplCopyWith<$Res> {
  __$$ResponseFindManyPaymentHistoryDataModelImplCopyWithImpl(
      _$ResponseFindManyPaymentHistoryDataModelImpl _value,
      $Res Function(_$ResponseFindManyPaymentHistoryDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deviceId = null,
    Object? bookingPaymentId = null,
    Object? courtAvailableId = null,
    Object? bookingPayment = null,
    Object? courtAvailable = null,
  }) {
    return _then(_$ResponseFindManyPaymentHistoryDataModelImpl(
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
      bookingPaymentId: null == bookingPaymentId
          ? _value.bookingPaymentId
          : bookingPaymentId // ignore: cast_nullable_to_non_nullable
              as String,
      courtAvailableId: null == courtAvailableId
          ? _value.courtAvailableId
          : courtAvailableId // ignore: cast_nullable_to_non_nullable
              as String,
      bookingPayment: null == bookingPayment
          ? _value.bookingPayment
          : bookingPayment // ignore: cast_nullable_to_non_nullable
              as ResponseBookingPaymentModel,
      courtAvailable: null == courtAvailable
          ? _value.courtAvailable
          : courtAvailable // ignore: cast_nullable_to_non_nullable
              as ResponseBookingDataCourtAvailableModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseFindManyPaymentHistoryDataModelImpl
    implements _ResponseFindManyPaymentHistoryDataModel {
  const _$ResponseFindManyPaymentHistoryDataModelImpl(
      {this.id = "",
      @JsonKey(name: 'created_at') this.createdAt = "",
      @JsonKey(name: 'updated_at') this.updatedAt = "",
      @JsonKey(name: 'device_id') this.deviceId = "",
      @JsonKey(name: 'booking_payment_id') this.bookingPaymentId = "",
      @JsonKey(name: 'court_available_id') this.courtAvailableId = "",
      @JsonKey(name: 'booking_payment')
      this.bookingPayment = const ResponseBookingPaymentModel(),
      @JsonKey(name: 'court_available')
      this.courtAvailable = const ResponseBookingDataCourtAvailableModel()});

  factory _$ResponseFindManyPaymentHistoryDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseFindManyPaymentHistoryDataModelImplFromJson(json);

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
  @JsonKey(name: 'booking_payment_id')
  final String bookingPaymentId;
  @override
  @JsonKey(name: 'court_available_id')
  final String courtAvailableId;
  @override
  @JsonKey(name: 'booking_payment')
  final ResponseBookingPaymentModel bookingPayment;
  @override
  @JsonKey(name: 'court_available')
  final ResponseBookingDataCourtAvailableModel courtAvailable;

  @override
  String toString() {
    return 'ResponseFindManyPaymentHistoryDataModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deviceId: $deviceId, bookingPaymentId: $bookingPaymentId, courtAvailableId: $courtAvailableId, bookingPayment: $bookingPayment, courtAvailable: $courtAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseFindManyPaymentHistoryDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.bookingPaymentId, bookingPaymentId) ||
                other.bookingPaymentId == bookingPaymentId) &&
            (identical(other.courtAvailableId, courtAvailableId) ||
                other.courtAvailableId == courtAvailableId) &&
            (identical(other.bookingPayment, bookingPayment) ||
                other.bookingPayment == bookingPayment) &&
            (identical(other.courtAvailable, courtAvailable) ||
                other.courtAvailable == courtAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      deviceId,
      bookingPaymentId,
      courtAvailableId,
      bookingPayment,
      courtAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseFindManyPaymentHistoryDataModelImplCopyWith<
          _$ResponseFindManyPaymentHistoryDataModelImpl>
      get copyWith =>
          __$$ResponseFindManyPaymentHistoryDataModelImplCopyWithImpl<
              _$ResponseFindManyPaymentHistoryDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseFindManyPaymentHistoryDataModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseFindManyPaymentHistoryDataModel
    implements ResponseFindManyPaymentHistoryDataModel {
  const factory _ResponseFindManyPaymentHistoryDataModel(
          {final String id,
          @JsonKey(name: 'created_at') final String createdAt,
          @JsonKey(name: 'updated_at') final String updatedAt,
          @JsonKey(name: 'device_id') final String deviceId,
          @JsonKey(name: 'booking_payment_id') final String bookingPaymentId,
          @JsonKey(name: 'court_available_id') final String courtAvailableId,
          @JsonKey(name: 'booking_payment')
          final ResponseBookingPaymentModel bookingPayment,
          @JsonKey(name: 'court_available')
          final ResponseBookingDataCourtAvailableModel courtAvailable}) =
      _$ResponseFindManyPaymentHistoryDataModelImpl;

  factory _ResponseFindManyPaymentHistoryDataModel.fromJson(
          Map<String, dynamic> json) =
      _$ResponseFindManyPaymentHistoryDataModelImpl.fromJson;

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
  @JsonKey(name: 'booking_payment_id')
  String get bookingPaymentId;
  @override
  @JsonKey(name: 'court_available_id')
  String get courtAvailableId;
  @override
  @JsonKey(name: 'booking_payment')
  ResponseBookingPaymentModel get bookingPayment;
  @override
  @JsonKey(name: 'court_available')
  ResponseBookingDataCourtAvailableModel get courtAvailable;
  @override
  @JsonKey(ignore: true)
  _$$ResponseFindManyPaymentHistoryDataModelImplCopyWith<
          _$ResponseFindManyPaymentHistoryDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
