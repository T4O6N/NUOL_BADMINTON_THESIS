// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_get_viewer_all_admin_court_booking_payment_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseGetViewerAllAdminCourtBookingPaymentHistory
    _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryFromJson(
        Map<String, dynamic> json) {
  return _ResponseGetViewerAllAdminCourtBookingPaymentHistory.fromJson(json);
}

/// @nodoc
mixin _$ResponseGetViewerAllAdminCourtBookingPaymentHistory {
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
  @JsonKey(name: 'admin_id')
  String get adminId => throw _privateConstructorUsedError;
  @JsonKey(name: 'court_available')
  ResponseGetViewerAllAdminCourtAvailable get courtAvailable =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseGetViewerAllAdminCourtBookingPaymentHistoryCopyWith<
          ResponseGetViewerAllAdminCourtBookingPaymentHistory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseGetViewerAllAdminCourtBookingPaymentHistoryCopyWith<
    $Res> {
  factory $ResponseGetViewerAllAdminCourtBookingPaymentHistoryCopyWith(
          ResponseGetViewerAllAdminCourtBookingPaymentHistory value,
          $Res Function(ResponseGetViewerAllAdminCourtBookingPaymentHistory)
              then) =
      _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryCopyWithImpl<$Res,
          ResponseGetViewerAllAdminCourtBookingPaymentHistory>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'booking_payment_id') String bookingPaymentId,
      @JsonKey(name: 'court_available_id') String courtAvailableId,
      @JsonKey(name: 'admin_id') String adminId,
      @JsonKey(name: 'court_available')
      ResponseGetViewerAllAdminCourtAvailable courtAvailable});

  $ResponseGetViewerAllAdminCourtAvailableCopyWith<$Res> get courtAvailable;
}

/// @nodoc
class _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryCopyWithImpl<$Res,
        $Val extends ResponseGetViewerAllAdminCourtBookingPaymentHistory>
    implements
        $ResponseGetViewerAllAdminCourtBookingPaymentHistoryCopyWith<$Res> {
  _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryCopyWithImpl(
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
    Object? adminId = null,
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
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      courtAvailable: null == courtAvailable
          ? _value.courtAvailable
          : courtAvailable // ignore: cast_nullable_to_non_nullable
              as ResponseGetViewerAllAdminCourtAvailable,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseGetViewerAllAdminCourtAvailableCopyWith<$Res> get courtAvailable {
    return $ResponseGetViewerAllAdminCourtAvailableCopyWith<$Res>(
        _value.courtAvailable, (value) {
      return _then(_value.copyWith(courtAvailable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImplCopyWith<
        $Res>
    implements
        $ResponseGetViewerAllAdminCourtBookingPaymentHistoryCopyWith<$Res> {
  factory _$$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImplCopyWith(
          _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl value,
          $Res Function(
                  _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl)
              then) =
      __$$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'booking_payment_id') String bookingPaymentId,
      @JsonKey(name: 'court_available_id') String courtAvailableId,
      @JsonKey(name: 'admin_id') String adminId,
      @JsonKey(name: 'court_available')
      ResponseGetViewerAllAdminCourtAvailable courtAvailable});

  @override
  $ResponseGetViewerAllAdminCourtAvailableCopyWith<$Res> get courtAvailable;
}

/// @nodoc
class __$$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImplCopyWithImpl<
        $Res>
    extends _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryCopyWithImpl<
        $Res, _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl>
    implements
        _$$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImplCopyWith<
            $Res> {
  __$$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImplCopyWithImpl(
      _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl _value,
      $Res Function(_$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl)
          _then)
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
    Object? adminId = null,
    Object? courtAvailable = null,
  }) {
    return _then(_$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl(
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
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      courtAvailable: null == courtAvailable
          ? _value.courtAvailable
          : courtAvailable // ignore: cast_nullable_to_non_nullable
              as ResponseGetViewerAllAdminCourtAvailable,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl
    implements _ResponseGetViewerAllAdminCourtBookingPaymentHistory {
  const _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl(
      {this.id = '',
      @JsonKey(name: 'created_at') this.createdAt = '',
      @JsonKey(name: 'updated_at') this.updatedAt = '',
      @JsonKey(name: 'device_id') this.deviceId = '',
      @JsonKey(name: 'booking_payment_id') this.bookingPaymentId = '',
      @JsonKey(name: 'court_available_id') this.courtAvailableId = '',
      @JsonKey(name: 'admin_id') this.adminId = '',
      @JsonKey(name: 'court_available')
      this.courtAvailable = const ResponseGetViewerAllAdminCourtAvailable()});

  factory _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImplFromJson(json);

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
  @JsonKey(name: 'admin_id')
  final String adminId;
  @override
  @JsonKey(name: 'court_available')
  final ResponseGetViewerAllAdminCourtAvailable courtAvailable;

  @override
  String toString() {
    return 'ResponseGetViewerAllAdminCourtBookingPaymentHistory(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deviceId: $deviceId, bookingPaymentId: $bookingPaymentId, courtAvailableId: $courtAvailableId, adminId: $adminId, courtAvailable: $courtAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl &&
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
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.courtAvailable, courtAvailable) ||
                other.courtAvailable == courtAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt,
      deviceId, bookingPaymentId, courtAvailableId, adminId, courtAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImplCopyWith<
          _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl>
      get copyWith =>
          __$$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImplCopyWithImpl<
                  _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImplToJson(
      this,
    );
  }
}

abstract class _ResponseGetViewerAllAdminCourtBookingPaymentHistory
    implements ResponseGetViewerAllAdminCourtBookingPaymentHistory {
  const factory _ResponseGetViewerAllAdminCourtBookingPaymentHistory(
          {final String id,
          @JsonKey(name: 'created_at') final String createdAt,
          @JsonKey(name: 'updated_at') final String updatedAt,
          @JsonKey(name: 'device_id') final String deviceId,
          @JsonKey(name: 'booking_payment_id') final String bookingPaymentId,
          @JsonKey(name: 'court_available_id') final String courtAvailableId,
          @JsonKey(name: 'admin_id') final String adminId,
          @JsonKey(name: 'court_available')
          final ResponseGetViewerAllAdminCourtAvailable courtAvailable}) =
      _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl;

  factory _ResponseGetViewerAllAdminCourtBookingPaymentHistory.fromJson(
          Map<String, dynamic> json) =
      _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl.fromJson;

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
  @JsonKey(name: 'admin_id')
  String get adminId;
  @override
  @JsonKey(name: 'court_available')
  ResponseGetViewerAllAdminCourtAvailable get courtAvailable;
  @override
  @JsonKey(ignore: true)
  _$$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImplCopyWith<
          _$ResponseGetViewerAllAdminCourtBookingPaymentHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
