// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_booking_court_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBookingCourtParam _$CreateBookingCourtParamFromJson(
    Map<String, dynamic> json) {
  return _CreateBookingCourtParam.fromJson(json);
}

/// @nodoc
mixin _$CreateBookingCourtParam {
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'court_number')
  String get courtNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'booked_by')
  String get bookedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  int get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'court')
  List<ListCourt> get court => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBookingCourtParamCopyWith<CreateBookingCourtParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBookingCourtParamCopyWith<$Res> {
  factory $CreateBookingCourtParamCopyWith(CreateBookingCourtParam value,
          $Res Function(CreateBookingCourtParam) then) =
      _$CreateBookingCourtParamCopyWithImpl<$Res, CreateBookingCourtParam>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'court_number') String courtNumber,
      @JsonKey(name: 'payment_status') String paymentStatus,
      @JsonKey(name: 'booked_by') String bookedBy,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'court') List<ListCourt> court});
}

/// @nodoc
class _$CreateBookingCourtParamCopyWithImpl<$Res,
        $Val extends CreateBookingCourtParam>
    implements $CreateBookingCourtParamCopyWith<$Res> {
  _$CreateBookingCourtParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? phone = null,
    Object? fullName = null,
    Object? courtNumber = null,
    Object? paymentStatus = null,
    Object? bookedBy = null,
    Object? totalAmount = null,
    Object? court = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      courtNumber: null == courtNumber
          ? _value.courtNumber
          : courtNumber // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      bookedBy: null == bookedBy
          ? _value.bookedBy
          : bookedBy // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      court: null == court
          ? _value.court
          : court // ignore: cast_nullable_to_non_nullable
              as List<ListCourt>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBookingCourtParamImplCopyWith<$Res>
    implements $CreateBookingCourtParamCopyWith<$Res> {
  factory _$$CreateBookingCourtParamImplCopyWith(
          _$CreateBookingCourtParamImpl value,
          $Res Function(_$CreateBookingCourtParamImpl) then) =
      __$$CreateBookingCourtParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_id') String deviceId,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'court_number') String courtNumber,
      @JsonKey(name: 'payment_status') String paymentStatus,
      @JsonKey(name: 'booked_by') String bookedBy,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'court') List<ListCourt> court});
}

/// @nodoc
class __$$CreateBookingCourtParamImplCopyWithImpl<$Res>
    extends _$CreateBookingCourtParamCopyWithImpl<$Res,
        _$CreateBookingCourtParamImpl>
    implements _$$CreateBookingCourtParamImplCopyWith<$Res> {
  __$$CreateBookingCourtParamImplCopyWithImpl(
      _$CreateBookingCourtParamImpl _value,
      $Res Function(_$CreateBookingCourtParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? phone = null,
    Object? fullName = null,
    Object? courtNumber = null,
    Object? paymentStatus = null,
    Object? bookedBy = null,
    Object? totalAmount = null,
    Object? court = null,
  }) {
    return _then(_$CreateBookingCourtParamImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      courtNumber: null == courtNumber
          ? _value.courtNumber
          : courtNumber // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      bookedBy: null == bookedBy
          ? _value.bookedBy
          : bookedBy // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      court: null == court
          ? _value._court
          : court // ignore: cast_nullable_to_non_nullable
              as List<ListCourt>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBookingCourtParamImpl implements _CreateBookingCourtParam {
  const _$CreateBookingCourtParamImpl(
      {@JsonKey(name: 'device_id') required this.deviceId,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'court_number') required this.courtNumber,
      @JsonKey(name: 'payment_status') required this.paymentStatus,
      @JsonKey(name: 'booked_by') required this.bookedBy,
      @JsonKey(name: 'total_amount') required this.totalAmount,
      @JsonKey(name: 'court') required final List<ListCourt> court})
      : _court = court;

  factory _$CreateBookingCourtParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBookingCourtParamImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final String deviceId;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'court_number')
  final String courtNumber;
  @override
  @JsonKey(name: 'payment_status')
  final String paymentStatus;
  @override
  @JsonKey(name: 'booked_by')
  final String bookedBy;
  @override
  @JsonKey(name: 'total_amount')
  final int totalAmount;
  final List<ListCourt> _court;
  @override
  @JsonKey(name: 'court')
  List<ListCourt> get court {
    if (_court is EqualUnmodifiableListView) return _court;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_court);
  }

  @override
  String toString() {
    return 'CreateBookingCourtParam(deviceId: $deviceId, phone: $phone, fullName: $fullName, courtNumber: $courtNumber, paymentStatus: $paymentStatus, bookedBy: $bookedBy, totalAmount: $totalAmount, court: $court)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookingCourtParamImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.courtNumber, courtNumber) ||
                other.courtNumber == courtNumber) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.bookedBy, bookedBy) ||
                other.bookedBy == bookedBy) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            const DeepCollectionEquality().equals(other._court, _court));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deviceId,
      phone,
      fullName,
      courtNumber,
      paymentStatus,
      bookedBy,
      totalAmount,
      const DeepCollectionEquality().hash(_court));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookingCourtParamImplCopyWith<_$CreateBookingCourtParamImpl>
      get copyWith => __$$CreateBookingCourtParamImplCopyWithImpl<
          _$CreateBookingCourtParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBookingCourtParamImplToJson(
      this,
    );
  }
}

abstract class _CreateBookingCourtParam implements CreateBookingCourtParam {
  const factory _CreateBookingCourtParam(
          {@JsonKey(name: 'device_id') required final String deviceId,
          @JsonKey(name: 'phone') required final String phone,
          @JsonKey(name: 'full_name') required final String fullName,
          @JsonKey(name: 'court_number') required final String courtNumber,
          @JsonKey(name: 'payment_status') required final String paymentStatus,
          @JsonKey(name: 'booked_by') required final String bookedBy,
          @JsonKey(name: 'total_amount') required final int totalAmount,
          @JsonKey(name: 'court') required final List<ListCourt> court}) =
      _$CreateBookingCourtParamImpl;

  factory _CreateBookingCourtParam.fromJson(Map<String, dynamic> json) =
      _$CreateBookingCourtParamImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  String get deviceId;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'court_number')
  String get courtNumber;
  @override
  @JsonKey(name: 'payment_status')
  String get paymentStatus;
  @override
  @JsonKey(name: 'booked_by')
  String get bookedBy;
  @override
  @JsonKey(name: 'total_amount')
  int get totalAmount;
  @override
  @JsonKey(name: 'court')
  List<ListCourt> get court;
  @override
  @JsonKey(ignore: true)
  _$$CreateBookingCourtParamImplCopyWith<_$CreateBookingCourtParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
