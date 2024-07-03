// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingHistory _$BookingHistoryFromJson(Map<String, dynamic> json) {
  return _BookingHistory.fromJson(json);
}

/// @nodoc
mixin _$BookingHistory {
  String get id => throw _privateConstructorUsedError;
  String get device_id => throw _privateConstructorUsedError;
  String get courtBookingId => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  CourtBooking get courtBooking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingHistoryCopyWith<BookingHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingHistoryCopyWith<$Res> {
  factory $BookingHistoryCopyWith(
          BookingHistory value, $Res Function(BookingHistory) then) =
      _$BookingHistoryCopyWithImpl<$Res, BookingHistory>;
  @useResult
  $Res call(
      {String id,
      String device_id,
      String courtBookingId,
      String created_at,
      String updated_at,
      CourtBooking courtBooking});

  $CourtBookingCopyWith<$Res> get courtBooking;
}

/// @nodoc
class _$BookingHistoryCopyWithImpl<$Res, $Val extends BookingHistory>
    implements $BookingHistoryCopyWith<$Res> {
  _$BookingHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? device_id = null,
    Object? courtBookingId = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? courtBooking = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      device_id: null == device_id
          ? _value.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as String,
      courtBookingId: null == courtBookingId
          ? _value.courtBookingId
          : courtBookingId // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      courtBooking: null == courtBooking
          ? _value.courtBooking
          : courtBooking // ignore: cast_nullable_to_non_nullable
              as CourtBooking,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourtBookingCopyWith<$Res> get courtBooking {
    return $CourtBookingCopyWith<$Res>(_value.courtBooking, (value) {
      return _then(_value.copyWith(courtBooking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingHistoryImplCopyWith<$Res>
    implements $BookingHistoryCopyWith<$Res> {
  factory _$$BookingHistoryImplCopyWith(_$BookingHistoryImpl value,
          $Res Function(_$BookingHistoryImpl) then) =
      __$$BookingHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String device_id,
      String courtBookingId,
      String created_at,
      String updated_at,
      CourtBooking courtBooking});

  @override
  $CourtBookingCopyWith<$Res> get courtBooking;
}

/// @nodoc
class __$$BookingHistoryImplCopyWithImpl<$Res>
    extends _$BookingHistoryCopyWithImpl<$Res, _$BookingHistoryImpl>
    implements _$$BookingHistoryImplCopyWith<$Res> {
  __$$BookingHistoryImplCopyWithImpl(
      _$BookingHistoryImpl _value, $Res Function(_$BookingHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? device_id = null,
    Object? courtBookingId = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? courtBooking = null,
  }) {
    return _then(_$BookingHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      device_id: null == device_id
          ? _value.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as String,
      courtBookingId: null == courtBookingId
          ? _value.courtBookingId
          : courtBookingId // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      courtBooking: null == courtBooking
          ? _value.courtBooking
          : courtBooking // ignore: cast_nullable_to_non_nullable
              as CourtBooking,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingHistoryImpl implements _BookingHistory {
  _$BookingHistoryImpl(
      {required this.id,
      required this.device_id,
      required this.courtBookingId,
      required this.created_at,
      required this.updated_at,
      required this.courtBooking});

  factory _$BookingHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingHistoryImplFromJson(json);

  @override
  final String id;
  @override
  final String device_id;
  @override
  final String courtBookingId;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  final CourtBooking courtBooking;

  @override
  String toString() {
    return 'BookingHistory(id: $id, device_id: $device_id, courtBookingId: $courtBookingId, created_at: $created_at, updated_at: $updated_at, courtBooking: $courtBooking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.device_id, device_id) ||
                other.device_id == device_id) &&
            (identical(other.courtBookingId, courtBookingId) ||
                other.courtBookingId == courtBookingId) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.courtBooking, courtBooking) ||
                other.courtBooking == courtBooking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, device_id, courtBookingId,
      created_at, updated_at, courtBooking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingHistoryImplCopyWith<_$BookingHistoryImpl> get copyWith =>
      __$$BookingHistoryImplCopyWithImpl<_$BookingHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingHistoryImplToJson(
      this,
    );
  }
}

abstract class _BookingHistory implements BookingHistory {
  factory _BookingHistory(
      {required final String id,
      required final String device_id,
      required final String courtBookingId,
      required final String created_at,
      required final String updated_at,
      required final CourtBooking courtBooking}) = _$BookingHistoryImpl;

  factory _BookingHistory.fromJson(Map<String, dynamic> json) =
      _$BookingHistoryImpl.fromJson;

  @override
  String get id;
  @override
  String get device_id;
  @override
  String get courtBookingId;
  @override
  String get created_at;
  @override
  String get updated_at;
  @override
  CourtBooking get courtBooking;
  @override
  @JsonKey(ignore: true)
  _$$BookingHistoryImplCopyWith<_$BookingHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
