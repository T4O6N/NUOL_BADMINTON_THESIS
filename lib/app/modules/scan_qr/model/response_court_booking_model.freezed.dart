// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_court_booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCourtBookingModel _$ResponseCourtBookingModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseCourtBookingModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseCourtBookingModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'court_number')
  String get courtNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  int get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'booked_by')
  String get bookedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  List<ResponseFindOneHistoryBookingDataCourtModel> get court =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCourtBookingModelCopyWith<ResponseCourtBookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCourtBookingModelCopyWith<$Res> {
  factory $ResponseCourtBookingModelCopyWith(ResponseCourtBookingModel value,
          $Res Function(ResponseCourtBookingModel) then) =
      _$ResponseCourtBookingModelCopyWithImpl<$Res, ResponseCourtBookingModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'device_id') String deviceId,
      String phone,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'court_number') String courtNumber,
      @JsonKey(name: 'payment_status') String paymentStatus,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'booked_by') String bookedBy,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      List<ResponseFindOneHistoryBookingDataCourtModel> court});
}

/// @nodoc
class _$ResponseCourtBookingModelCopyWithImpl<$Res,
        $Val extends ResponseCourtBookingModel>
    implements $ResponseCourtBookingModelCopyWith<$Res> {
  _$ResponseCourtBookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? phone = null,
    Object? fullName = null,
    Object? courtNumber = null,
    Object? paymentStatus = null,
    Object? totalAmount = null,
    Object? bookedBy = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? court = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      bookedBy: null == bookedBy
          ? _value.bookedBy
          : bookedBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      court: null == court
          ? _value.court
          : court // ignore: cast_nullable_to_non_nullable
              as List<ResponseFindOneHistoryBookingDataCourtModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseCourtBookingModelImplCopyWith<$Res>
    implements $ResponseCourtBookingModelCopyWith<$Res> {
  factory _$$ResponseCourtBookingModelImplCopyWith(
          _$ResponseCourtBookingModelImpl value,
          $Res Function(_$ResponseCourtBookingModelImpl) then) =
      __$$ResponseCourtBookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'device_id') String deviceId,
      String phone,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'court_number') String courtNumber,
      @JsonKey(name: 'payment_status') String paymentStatus,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'booked_by') String bookedBy,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      List<ResponseFindOneHistoryBookingDataCourtModel> court});
}

/// @nodoc
class __$$ResponseCourtBookingModelImplCopyWithImpl<$Res>
    extends _$ResponseCourtBookingModelCopyWithImpl<$Res,
        _$ResponseCourtBookingModelImpl>
    implements _$$ResponseCourtBookingModelImplCopyWith<$Res> {
  __$$ResponseCourtBookingModelImplCopyWithImpl(
      _$ResponseCourtBookingModelImpl _value,
      $Res Function(_$ResponseCourtBookingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? phone = null,
    Object? fullName = null,
    Object? courtNumber = null,
    Object? paymentStatus = null,
    Object? totalAmount = null,
    Object? bookedBy = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? court = null,
  }) {
    return _then(_$ResponseCourtBookingModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      bookedBy: null == bookedBy
          ? _value.bookedBy
          : bookedBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      court: null == court
          ? _value._court
          : court // ignore: cast_nullable_to_non_nullable
              as List<ResponseFindOneHistoryBookingDataCourtModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCourtBookingModelImpl implements _ResponseCourtBookingModel {
  const _$ResponseCourtBookingModelImpl(
      {this.id = "",
      @JsonKey(name: 'device_id') this.deviceId = "",
      this.phone = "",
      @JsonKey(name: 'full_name') this.fullName = "",
      @JsonKey(name: 'court_number') this.courtNumber = "",
      @JsonKey(name: 'payment_status') this.paymentStatus = "",
      @JsonKey(name: 'total_amount') this.totalAmount = 0,
      @JsonKey(name: 'booked_by') this.bookedBy = "",
      @JsonKey(name: 'created_at') this.createdAt = "",
      @JsonKey(name: 'updated_at') this.updatedAt = "",
      final List<ResponseFindOneHistoryBookingDataCourtModel> court = const []})
      : _court = court;

  factory _$ResponseCourtBookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCourtBookingModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey(name: 'device_id')
  final String deviceId;
  @override
  @JsonKey()
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
  @JsonKey(name: 'total_amount')
  final int totalAmount;
  @override
  @JsonKey(name: 'booked_by')
  final String bookedBy;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  final List<ResponseFindOneHistoryBookingDataCourtModel> _court;
  @override
  @JsonKey()
  List<ResponseFindOneHistoryBookingDataCourtModel> get court {
    if (_court is EqualUnmodifiableListView) return _court;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_court);
  }

  @override
  String toString() {
    return 'ResponseCourtBookingModel(id: $id, deviceId: $deviceId, phone: $phone, fullName: $fullName, courtNumber: $courtNumber, paymentStatus: $paymentStatus, totalAmount: $totalAmount, bookedBy: $bookedBy, createdAt: $createdAt, updatedAt: $updatedAt, court: $court)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCourtBookingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.courtNumber, courtNumber) ||
                other.courtNumber == courtNumber) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.bookedBy, bookedBy) ||
                other.bookedBy == bookedBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._court, _court));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      deviceId,
      phone,
      fullName,
      courtNumber,
      paymentStatus,
      totalAmount,
      bookedBy,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_court));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCourtBookingModelImplCopyWith<_$ResponseCourtBookingModelImpl>
      get copyWith => __$$ResponseCourtBookingModelImplCopyWithImpl<
          _$ResponseCourtBookingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCourtBookingModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseCourtBookingModel implements ResponseCourtBookingModel {
  const factory _ResponseCourtBookingModel(
          {final String id,
          @JsonKey(name: 'device_id') final String deviceId,
          final String phone,
          @JsonKey(name: 'full_name') final String fullName,
          @JsonKey(name: 'court_number') final String courtNumber,
          @JsonKey(name: 'payment_status') final String paymentStatus,
          @JsonKey(name: 'total_amount') final int totalAmount,
          @JsonKey(name: 'booked_by') final String bookedBy,
          @JsonKey(name: 'created_at') final String createdAt,
          @JsonKey(name: 'updated_at') final String updatedAt,
          final List<ResponseFindOneHistoryBookingDataCourtModel> court}) =
      _$ResponseCourtBookingModelImpl;

  factory _ResponseCourtBookingModel.fromJson(Map<String, dynamic> json) =
      _$ResponseCourtBookingModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'device_id')
  String get deviceId;
  @override
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
  @JsonKey(name: 'total_amount')
  int get totalAmount;
  @override
  @JsonKey(name: 'booked_by')
  String get bookedBy;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  List<ResponseFindOneHistoryBookingDataCourtModel> get court;
  @override
  @JsonKey(ignore: true)
  _$$ResponseCourtBookingModelImplCopyWith<_$ResponseCourtBookingModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
