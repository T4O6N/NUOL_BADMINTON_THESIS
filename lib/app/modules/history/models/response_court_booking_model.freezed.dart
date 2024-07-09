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
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'court_number')
  String get courtNumber => throw _privateConstructorUsedError;

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
      {String phone,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'court_number') String courtNumber});
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
    Object? phone = null,
    Object? fullName = null,
    Object? courtNumber = null,
  }) {
    return _then(_value.copyWith(
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
      {String phone,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'court_number') String courtNumber});
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
    Object? phone = null,
    Object? fullName = null,
    Object? courtNumber = null,
  }) {
    return _then(_$ResponseCourtBookingModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCourtBookingModelImpl implements _ResponseCourtBookingModel {
  const _$ResponseCourtBookingModelImpl(
      {this.phone = "",
      @JsonKey(name: 'full_name') this.fullName = "",
      @JsonKey(name: 'court_number') this.courtNumber = ""});

  factory _$ResponseCourtBookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCourtBookingModelImplFromJson(json);

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
  String toString() {
    return 'ResponseCourtBookingModel(phone: $phone, fullName: $fullName, courtNumber: $courtNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCourtBookingModelImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.courtNumber, courtNumber) ||
                other.courtNumber == courtNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, fullName, courtNumber);

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
          {final String phone,
          @JsonKey(name: 'full_name') final String fullName,
          @JsonKey(name: 'court_number') final String courtNumber}) =
      _$ResponseCourtBookingModelImpl;

  factory _ResponseCourtBookingModel.fromJson(Map<String, dynamic> json) =
      _$ResponseCourtBookingModelImpl.fromJson;

  @override
  String get phone;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'court_number')
  String get courtNumber;
  @override
  @JsonKey(ignore: true)
  _$$ResponseCourtBookingModelImplCopyWith<_$ResponseCourtBookingModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
