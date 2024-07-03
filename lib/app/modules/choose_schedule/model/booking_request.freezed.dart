// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingRequest _$BookingRequestFromJson(Map<String, dynamic> json) {
  return _BookingRequest.fromJson(json);
}

/// @nodoc
mixin _$BookingRequest {
  String get device_id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get full_name => throw _privateConstructorUsedError;
  String get court_number => throw _privateConstructorUsedError;
  String get payment_status => throw _privateConstructorUsedError;
  String? get booked_by => throw _privateConstructorUsedError;
  int get total_amount => throw _privateConstructorUsedError;
  List<CourtDuration> get court => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingRequestCopyWith<BookingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingRequestCopyWith<$Res> {
  factory $BookingRequestCopyWith(
          BookingRequest value, $Res Function(BookingRequest) then) =
      _$BookingRequestCopyWithImpl<$Res, BookingRequest>;
  @useResult
  $Res call(
      {String device_id,
      String phone,
      String full_name,
      String court_number,
      String payment_status,
      String? booked_by,
      int total_amount,
      List<CourtDuration> court});
}

/// @nodoc
class _$BookingRequestCopyWithImpl<$Res, $Val extends BookingRequest>
    implements $BookingRequestCopyWith<$Res> {
  _$BookingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device_id = null,
    Object? phone = null,
    Object? full_name = null,
    Object? court_number = null,
    Object? payment_status = null,
    Object? booked_by = freezed,
    Object? total_amount = null,
    Object? court = null,
  }) {
    return _then(_value.copyWith(
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
      booked_by: freezed == booked_by
          ? _value.booked_by
          : booked_by // ignore: cast_nullable_to_non_nullable
              as String?,
      total_amount: null == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as int,
      court: null == court
          ? _value.court
          : court // ignore: cast_nullable_to_non_nullable
              as List<CourtDuration>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingRequestImplCopyWith<$Res>
    implements $BookingRequestCopyWith<$Res> {
  factory _$$BookingRequestImplCopyWith(_$BookingRequestImpl value,
          $Res Function(_$BookingRequestImpl) then) =
      __$$BookingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String device_id,
      String phone,
      String full_name,
      String court_number,
      String payment_status,
      String? booked_by,
      int total_amount,
      List<CourtDuration> court});
}

/// @nodoc
class __$$BookingRequestImplCopyWithImpl<$Res>
    extends _$BookingRequestCopyWithImpl<$Res, _$BookingRequestImpl>
    implements _$$BookingRequestImplCopyWith<$Res> {
  __$$BookingRequestImplCopyWithImpl(
      _$BookingRequestImpl _value, $Res Function(_$BookingRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device_id = null,
    Object? phone = null,
    Object? full_name = null,
    Object? court_number = null,
    Object? payment_status = null,
    Object? booked_by = freezed,
    Object? total_amount = null,
    Object? court = null,
  }) {
    return _then(_$BookingRequestImpl(
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
      booked_by: freezed == booked_by
          ? _value.booked_by
          : booked_by // ignore: cast_nullable_to_non_nullable
              as String?,
      total_amount: null == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as int,
      court: null == court
          ? _value._court
          : court // ignore: cast_nullable_to_non_nullable
              as List<CourtDuration>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingRequestImpl implements _BookingRequest {
  _$BookingRequestImpl(
      {required this.device_id,
      required this.phone,
      required this.full_name,
      required this.court_number,
      required this.payment_status,
      this.booked_by = '',
      this.total_amount = 0,
      final List<CourtDuration> court = const []})
      : _court = court;

  factory _$BookingRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingRequestImplFromJson(json);

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
  final String? booked_by;
  @override
  @JsonKey()
  final int total_amount;
  final List<CourtDuration> _court;
  @override
  @JsonKey()
  List<CourtDuration> get court {
    if (_court is EqualUnmodifiableListView) return _court;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_court);
  }

  @override
  String toString() {
    return 'BookingRequest(device_id: $device_id, phone: $phone, full_name: $full_name, court_number: $court_number, payment_status: $payment_status, booked_by: $booked_by, total_amount: $total_amount, court: $court)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingRequestImpl &&
            (identical(other.device_id, device_id) ||
                other.device_id == device_id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.court_number, court_number) ||
                other.court_number == court_number) &&
            (identical(other.payment_status, payment_status) ||
                other.payment_status == payment_status) &&
            (identical(other.booked_by, booked_by) ||
                other.booked_by == booked_by) &&
            (identical(other.total_amount, total_amount) ||
                other.total_amount == total_amount) &&
            const DeepCollectionEquality().equals(other._court, _court));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      device_id,
      phone,
      full_name,
      court_number,
      payment_status,
      booked_by,
      total_amount,
      const DeepCollectionEquality().hash(_court));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingRequestImplCopyWith<_$BookingRequestImpl> get copyWith =>
      __$$BookingRequestImplCopyWithImpl<_$BookingRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingRequestImplToJson(
      this,
    );
  }
}

abstract class _BookingRequest implements BookingRequest {
  factory _BookingRequest(
      {required final String device_id,
      required final String phone,
      required final String full_name,
      required final String court_number,
      required final String payment_status,
      final String? booked_by,
      final int total_amount,
      final List<CourtDuration> court}) = _$BookingRequestImpl;

  factory _BookingRequest.fromJson(Map<String, dynamic> json) =
      _$BookingRequestImpl.fromJson;

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
  String? get booked_by;
  @override
  int get total_amount;
  @override
  List<CourtDuration> get court;
  @override
  @JsonKey(ignore: true)
  _$$BookingRequestImplCopyWith<_$BookingRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
