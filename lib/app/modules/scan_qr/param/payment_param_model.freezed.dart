// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_param_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentParamModel _$PaymentParamModelFromJson(Map<String, dynamic> json) {
  return _PaymentParamModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentParamModel {
  @JsonKey(name: 'court_booking_id')
  String get courtBookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'court_available_id')
  String get courtAvailableId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentParamModelCopyWith<PaymentParamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentParamModelCopyWith<$Res> {
  factory $PaymentParamModelCopyWith(
          PaymentParamModel value, $Res Function(PaymentParamModel) then) =
      _$PaymentParamModelCopyWithImpl<$Res, PaymentParamModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'court_booking_id') String courtBookingId,
      @JsonKey(name: 'court_available_id') String courtAvailableId,
      @JsonKey(name: 'device_id') String deviceId});
}

/// @nodoc
class _$PaymentParamModelCopyWithImpl<$Res, $Val extends PaymentParamModel>
    implements $PaymentParamModelCopyWith<$Res> {
  _$PaymentParamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtBookingId = null,
    Object? courtAvailableId = null,
    Object? deviceId = null,
  }) {
    return _then(_value.copyWith(
      courtBookingId: null == courtBookingId
          ? _value.courtBookingId
          : courtBookingId // ignore: cast_nullable_to_non_nullable
              as String,
      courtAvailableId: null == courtAvailableId
          ? _value.courtAvailableId
          : courtAvailableId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentParamModelImplCopyWith<$Res>
    implements $PaymentParamModelCopyWith<$Res> {
  factory _$$PaymentParamModelImplCopyWith(_$PaymentParamModelImpl value,
          $Res Function(_$PaymentParamModelImpl) then) =
      __$$PaymentParamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'court_booking_id') String courtBookingId,
      @JsonKey(name: 'court_available_id') String courtAvailableId,
      @JsonKey(name: 'device_id') String deviceId});
}

/// @nodoc
class __$$PaymentParamModelImplCopyWithImpl<$Res>
    extends _$PaymentParamModelCopyWithImpl<$Res, _$PaymentParamModelImpl>
    implements _$$PaymentParamModelImplCopyWith<$Res> {
  __$$PaymentParamModelImplCopyWithImpl(_$PaymentParamModelImpl _value,
      $Res Function(_$PaymentParamModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtBookingId = null,
    Object? courtAvailableId = null,
    Object? deviceId = null,
  }) {
    return _then(_$PaymentParamModelImpl(
      courtBookingId: null == courtBookingId
          ? _value.courtBookingId
          : courtBookingId // ignore: cast_nullable_to_non_nullable
              as String,
      courtAvailableId: null == courtAvailableId
          ? _value.courtAvailableId
          : courtAvailableId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentParamModelImpl implements _PaymentParamModel {
  const _$PaymentParamModelImpl(
      {@JsonKey(name: 'court_booking_id') required this.courtBookingId,
      @JsonKey(name: 'court_available_id') required this.courtAvailableId,
      @JsonKey(name: 'device_id') required this.deviceId});

  factory _$PaymentParamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentParamModelImplFromJson(json);

  @override
  @JsonKey(name: 'court_booking_id')
  final String courtBookingId;
  @override
  @JsonKey(name: 'court_available_id')
  final String courtAvailableId;
  @override
  @JsonKey(name: 'device_id')
  final String deviceId;

  @override
  String toString() {
    return 'PaymentParamModel(courtBookingId: $courtBookingId, courtAvailableId: $courtAvailableId, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentParamModelImpl &&
            (identical(other.courtBookingId, courtBookingId) ||
                other.courtBookingId == courtBookingId) &&
            (identical(other.courtAvailableId, courtAvailableId) ||
                other.courtAvailableId == courtAvailableId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, courtBookingId, courtAvailableId, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentParamModelImplCopyWith<_$PaymentParamModelImpl> get copyWith =>
      __$$PaymentParamModelImplCopyWithImpl<_$PaymentParamModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentParamModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentParamModel implements PaymentParamModel {
  const factory _PaymentParamModel(
      {@JsonKey(name: 'court_booking_id') required final String courtBookingId,
      @JsonKey(name: 'court_available_id')
      required final String courtAvailableId,
      @JsonKey(name: 'device_id')
      required final String deviceId}) = _$PaymentParamModelImpl;

  factory _PaymentParamModel.fromJson(Map<String, dynamic> json) =
      _$PaymentParamModelImpl.fromJson;

  @override
  @JsonKey(name: 'court_booking_id')
  String get courtBookingId;
  @override
  @JsonKey(name: 'court_available_id')
  String get courtAvailableId;
  @override
  @JsonKey(name: 'device_id')
  String get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$PaymentParamModelImplCopyWith<_$PaymentParamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
