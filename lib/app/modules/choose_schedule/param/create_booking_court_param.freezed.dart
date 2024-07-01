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
  String get deviceId => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;
  String get bookedBy => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  List<CreateBookingCourtDurationTimeParam> get court =>
      throw _privateConstructorUsedError;

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
      {String deviceId,
      String phone,
      String fullName,
      String paymentStatus,
      String bookedBy,
      int totalAmount,
      List<CreateBookingCourtDurationTimeParam> court});
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
              as List<CreateBookingCourtDurationTimeParam>,
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
      {String deviceId,
      String phone,
      String fullName,
      String paymentStatus,
      String bookedBy,
      int totalAmount,
      List<CreateBookingCourtDurationTimeParam> court});
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
              as List<CreateBookingCourtDurationTimeParam>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBookingCourtParamImpl implements _CreateBookingCourtParam {
  const _$CreateBookingCourtParamImpl(
      {this.deviceId = '',
      this.phone = '',
      this.fullName = '',
      this.paymentStatus = '',
      this.bookedBy = '',
      this.totalAmount = 0,
      final List<CreateBookingCourtDurationTimeParam> court = const []})
      : _court = court;

  factory _$CreateBookingCourtParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBookingCourtParamImplFromJson(json);

  @override
  @JsonKey()
  final String deviceId;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String paymentStatus;
  @override
  @JsonKey()
  final String bookedBy;
  @override
  @JsonKey()
  final int totalAmount;
  final List<CreateBookingCourtDurationTimeParam> _court;
  @override
  @JsonKey()
  List<CreateBookingCourtDurationTimeParam> get court {
    if (_court is EqualUnmodifiableListView) return _court;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_court);
  }

  @override
  String toString() {
    return 'CreateBookingCourtParam(deviceId: $deviceId, phone: $phone, fullName: $fullName, paymentStatus: $paymentStatus, bookedBy: $bookedBy, totalAmount: $totalAmount, court: $court)';
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
          {final String deviceId,
          final String phone,
          final String fullName,
          final String paymentStatus,
          final String bookedBy,
          final int totalAmount,
          final List<CreateBookingCourtDurationTimeParam> court}) =
      _$CreateBookingCourtParamImpl;

  factory _CreateBookingCourtParam.fromJson(Map<String, dynamic> json) =
      _$CreateBookingCourtParamImpl.fromJson;

  @override
  String get deviceId;
  @override
  String get phone;
  @override
  String get fullName;
  @override
  String get paymentStatus;
  @override
  String get bookedBy;
  @override
  int get totalAmount;
  @override
  List<CreateBookingCourtDurationTimeParam> get court;
  @override
  @JsonKey(ignore: true)
  _$$CreateBookingCourtParamImplCopyWith<_$CreateBookingCourtParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
