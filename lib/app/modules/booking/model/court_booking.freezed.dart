// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'court_booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourtBooking _$CourtBookingFromJson(Map<String, dynamic> json) {
  return _CourtBooking.fromJson(json);
}

/// @nodoc
mixin _$CourtBooking {
  String get id => throw _privateConstructorUsedError;
  String get device_id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get full_name => throw _privateConstructorUsedError;
  String get court_number => throw _privateConstructorUsedError;
  String get payment_status => throw _privateConstructorUsedError;
  int get total_amount => throw _privateConstructorUsedError;
  String get booked_by => throw _privateConstructorUsedError;
  String get expiredTime => throw _privateConstructorUsedError;
  String get bookingDate => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  List<CourtTime> get court => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourtBookingCopyWith<CourtBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourtBookingCopyWith<$Res> {
  factory $CourtBookingCopyWith(
          CourtBooking value, $Res Function(CourtBooking) then) =
      _$CourtBookingCopyWithImpl<$Res, CourtBooking>;
  @useResult
  $Res call(
      {String id,
      String device_id,
      String phone,
      String full_name,
      String court_number,
      String payment_status,
      int total_amount,
      String booked_by,
      String expiredTime,
      String bookingDate,
      String created_at,
      String updated_at,
      List<CourtTime> court});
}

/// @nodoc
class _$CourtBookingCopyWithImpl<$Res, $Val extends CourtBooking>
    implements $CourtBookingCopyWith<$Res> {
  _$CourtBookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? device_id = null,
    Object? phone = null,
    Object? full_name = null,
    Object? court_number = null,
    Object? payment_status = null,
    Object? total_amount = null,
    Object? booked_by = null,
    Object? expiredTime = null,
    Object? bookingDate = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? court = null,
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
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      full_name: null == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String,
      court_number: null == court_number
          ? _value.court_number
          : court_number // ignore: cast_nullable_to_non_nullable
              as String,
      payment_status: null == payment_status
          ? _value.payment_status
          : payment_status // ignore: cast_nullable_to_non_nullable
              as String,
      total_amount: null == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as int,
      booked_by: null == booked_by
          ? _value.booked_by
          : booked_by // ignore: cast_nullable_to_non_nullable
              as String,
      expiredTime: null == expiredTime
          ? _value.expiredTime
          : expiredTime // ignore: cast_nullable_to_non_nullable
              as String,
      bookingDate: null == bookingDate
          ? _value.bookingDate
          : bookingDate // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      court: null == court
          ? _value.court
          : court // ignore: cast_nullable_to_non_nullable
              as List<CourtTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourtBookingImplCopyWith<$Res>
    implements $CourtBookingCopyWith<$Res> {
  factory _$$CourtBookingImplCopyWith(
          _$CourtBookingImpl value, $Res Function(_$CourtBookingImpl) then) =
      __$$CourtBookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String device_id,
      String phone,
      String full_name,
      String court_number,
      String payment_status,
      int total_amount,
      String booked_by,
      String expiredTime,
      String bookingDate,
      String created_at,
      String updated_at,
      List<CourtTime> court});
}

/// @nodoc
class __$$CourtBookingImplCopyWithImpl<$Res>
    extends _$CourtBookingCopyWithImpl<$Res, _$CourtBookingImpl>
    implements _$$CourtBookingImplCopyWith<$Res> {
  __$$CourtBookingImplCopyWithImpl(
      _$CourtBookingImpl _value, $Res Function(_$CourtBookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? device_id = null,
    Object? phone = null,
    Object? full_name = null,
    Object? court_number = null,
    Object? payment_status = null,
    Object? total_amount = null,
    Object? booked_by = null,
    Object? expiredTime = null,
    Object? bookingDate = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? court = null,
  }) {
    return _then(_$CourtBookingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      device_id: null == device_id
          ? _value.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      full_name: null == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String,
      court_number: null == court_number
          ? _value.court_number
          : court_number // ignore: cast_nullable_to_non_nullable
              as String,
      payment_status: null == payment_status
          ? _value.payment_status
          : payment_status // ignore: cast_nullable_to_non_nullable
              as String,
      total_amount: null == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as int,
      booked_by: null == booked_by
          ? _value.booked_by
          : booked_by // ignore: cast_nullable_to_non_nullable
              as String,
      expiredTime: null == expiredTime
          ? _value.expiredTime
          : expiredTime // ignore: cast_nullable_to_non_nullable
              as String,
      bookingDate: null == bookingDate
          ? _value.bookingDate
          : bookingDate // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      court: null == court
          ? _value._court
          : court // ignore: cast_nullable_to_non_nullable
              as List<CourtTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourtBookingImpl implements _CourtBooking {
  _$CourtBookingImpl(
      {required this.id,
      required this.device_id,
      required this.phone,
      required this.full_name,
      required this.court_number,
      required this.payment_status,
      this.total_amount = 0,
      this.booked_by = '',
      required this.expiredTime,
      required this.bookingDate,
      required this.created_at,
      required this.updated_at,
      final List<CourtTime> court = const []})
      : _court = court;

  factory _$CourtBookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourtBookingImplFromJson(json);

  @override
  final String id;
  @override
  final String device_id;
  @override
  final String phone;
  @override
  final String full_name;
  @override
  final String court_number;
  @override
  final String payment_status;
  @override
  @JsonKey()
  final int total_amount;
  @override
  @JsonKey()
  final String booked_by;
  @override
  final String expiredTime;
  @override
  final String bookingDate;
  @override
  final String created_at;
  @override
  final String updated_at;
  final List<CourtTime> _court;
  @override
  @JsonKey()
  List<CourtTime> get court {
    if (_court is EqualUnmodifiableListView) return _court;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_court);
  }

  @override
  String toString() {
    return 'CourtBooking(id: $id, device_id: $device_id, phone: $phone, full_name: $full_name, court_number: $court_number, payment_status: $payment_status, total_amount: $total_amount, booked_by: $booked_by, expiredTime: $expiredTime, bookingDate: $bookingDate, created_at: $created_at, updated_at: $updated_at, court: $court)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourtBookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.device_id, device_id) ||
                other.device_id == device_id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.court_number, court_number) ||
                other.court_number == court_number) &&
            (identical(other.payment_status, payment_status) ||
                other.payment_status == payment_status) &&
            (identical(other.total_amount, total_amount) ||
                other.total_amount == total_amount) &&
            (identical(other.booked_by, booked_by) ||
                other.booked_by == booked_by) &&
            (identical(other.expiredTime, expiredTime) ||
                other.expiredTime == expiredTime) &&
            (identical(other.bookingDate, bookingDate) ||
                other.bookingDate == bookingDate) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            const DeepCollectionEquality().equals(other._court, _court));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      device_id,
      phone,
      full_name,
      court_number,
      payment_status,
      total_amount,
      booked_by,
      expiredTime,
      bookingDate,
      created_at,
      updated_at,
      const DeepCollectionEquality().hash(_court));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourtBookingImplCopyWith<_$CourtBookingImpl> get copyWith =>
      __$$CourtBookingImplCopyWithImpl<_$CourtBookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourtBookingImplToJson(
      this,
    );
  }
}

abstract class _CourtBooking implements CourtBooking {
  factory _CourtBooking(
      {required final String id,
      required final String device_id,
      required final String phone,
      required final String full_name,
      required final String court_number,
      required final String payment_status,
      final int total_amount,
      final String booked_by,
      required final String expiredTime,
      required final String bookingDate,
      required final String created_at,
      required final String updated_at,
      final List<CourtTime> court}) = _$CourtBookingImpl;

  factory _CourtBooking.fromJson(Map<String, dynamic> json) =
      _$CourtBookingImpl.fromJson;

  @override
  String get id;
  @override
  String get device_id;
  @override
  String get phone;
  @override
  String get full_name;
  @override
  String get court_number;
  @override
  String get payment_status;
  @override
  int get total_amount;
  @override
  String get booked_by;
  @override
  String get expiredTime;
  @override
  String get bookingDate;
  @override
  String get created_at;
  @override
  String get updated_at;
  @override
  List<CourtTime> get court;
  @override
  @JsonKey(ignore: true)
  _$$CourtBookingImplCopyWith<_$CourtBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
