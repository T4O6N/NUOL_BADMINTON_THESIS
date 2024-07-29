// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_get_viewer_all_admin_court_booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseGetViewerAllAdminCourtBooking
    _$ResponseGetViewerAllAdminCourtBookingFromJson(Map<String, dynamic> json) {
  return _ResponseGetViewerAllAdminCourtBooking.fromJson(json);
}

/// @nodoc
mixin _$ResponseGetViewerAllAdminCourtBooking {
  @JsonKey(name: 'court_number')
  String get courtNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseGetViewerAllAdminCourtBookingCopyWith<
          ResponseGetViewerAllAdminCourtBooking>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseGetViewerAllAdminCourtBookingCopyWith<$Res> {
  factory $ResponseGetViewerAllAdminCourtBookingCopyWith(
          ResponseGetViewerAllAdminCourtBooking value,
          $Res Function(ResponseGetViewerAllAdminCourtBooking) then) =
      _$ResponseGetViewerAllAdminCourtBookingCopyWithImpl<$Res,
          ResponseGetViewerAllAdminCourtBooking>;
  @useResult
  $Res call({@JsonKey(name: 'court_number') String courtNumber});
}

/// @nodoc
class _$ResponseGetViewerAllAdminCourtBookingCopyWithImpl<$Res,
        $Val extends ResponseGetViewerAllAdminCourtBooking>
    implements $ResponseGetViewerAllAdminCourtBookingCopyWith<$Res> {
  _$ResponseGetViewerAllAdminCourtBookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtNumber = null,
  }) {
    return _then(_value.copyWith(
      courtNumber: null == courtNumber
          ? _value.courtNumber
          : courtNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseGetViewerAllAdminCourtBookingImplCopyWith<$Res>
    implements $ResponseGetViewerAllAdminCourtBookingCopyWith<$Res> {
  factory _$$ResponseGetViewerAllAdminCourtBookingImplCopyWith(
          _$ResponseGetViewerAllAdminCourtBookingImpl value,
          $Res Function(_$ResponseGetViewerAllAdminCourtBookingImpl) then) =
      __$$ResponseGetViewerAllAdminCourtBookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'court_number') String courtNumber});
}

/// @nodoc
class __$$ResponseGetViewerAllAdminCourtBookingImplCopyWithImpl<$Res>
    extends _$ResponseGetViewerAllAdminCourtBookingCopyWithImpl<$Res,
        _$ResponseGetViewerAllAdminCourtBookingImpl>
    implements _$$ResponseGetViewerAllAdminCourtBookingImplCopyWith<$Res> {
  __$$ResponseGetViewerAllAdminCourtBookingImplCopyWithImpl(
      _$ResponseGetViewerAllAdminCourtBookingImpl _value,
      $Res Function(_$ResponseGetViewerAllAdminCourtBookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtNumber = null,
  }) {
    return _then(_$ResponseGetViewerAllAdminCourtBookingImpl(
      courtNumber: null == courtNumber
          ? _value.courtNumber
          : courtNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseGetViewerAllAdminCourtBookingImpl
    implements _ResponseGetViewerAllAdminCourtBooking {
  const _$ResponseGetViewerAllAdminCourtBookingImpl(
      {@JsonKey(name: 'court_number') this.courtNumber = ''});

  factory _$ResponseGetViewerAllAdminCourtBookingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseGetViewerAllAdminCourtBookingImplFromJson(json);

  @override
  @JsonKey(name: 'court_number')
  final String courtNumber;

  @override
  String toString() {
    return 'ResponseGetViewerAllAdminCourtBooking(courtNumber: $courtNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseGetViewerAllAdminCourtBookingImpl &&
            (identical(other.courtNumber, courtNumber) ||
                other.courtNumber == courtNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, courtNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseGetViewerAllAdminCourtBookingImplCopyWith<
          _$ResponseGetViewerAllAdminCourtBookingImpl>
      get copyWith => __$$ResponseGetViewerAllAdminCourtBookingImplCopyWithImpl<
          _$ResponseGetViewerAllAdminCourtBookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseGetViewerAllAdminCourtBookingImplToJson(
      this,
    );
  }
}

abstract class _ResponseGetViewerAllAdminCourtBooking
    implements ResponseGetViewerAllAdminCourtBooking {
  const factory _ResponseGetViewerAllAdminCourtBooking(
          {@JsonKey(name: 'court_number') final String courtNumber}) =
      _$ResponseGetViewerAllAdminCourtBookingImpl;

  factory _ResponseGetViewerAllAdminCourtBooking.fromJson(
          Map<String, dynamic> json) =
      _$ResponseGetViewerAllAdminCourtBookingImpl.fromJson;

  @override
  @JsonKey(name: 'court_number')
  String get courtNumber;
  @override
  @JsonKey(ignore: true)
  _$$ResponseGetViewerAllAdminCourtBookingImplCopyWith<
          _$ResponseGetViewerAllAdminCourtBookingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
