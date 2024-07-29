// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_get_viewer_all_admin_court_available.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseGetViewerAllAdminCourtAvailable
    _$ResponseGetViewerAllAdminCourtAvailableFromJson(
        Map<String, dynamic> json) {
  return _ResponseGetViewerAllAdminCourtAvailable.fromJson(json);
}

/// @nodoc
mixin _$ResponseGetViewerAllAdminCourtAvailable {
  @JsonKey(name: 'all_total_amount')
  int get allTotalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'court_booking')
  ResponseGetViewerAllAdminCourtBooking get courtBooking =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseGetViewerAllAdminCourtAvailableCopyWith<
          ResponseGetViewerAllAdminCourtAvailable>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseGetViewerAllAdminCourtAvailableCopyWith<$Res> {
  factory $ResponseGetViewerAllAdminCourtAvailableCopyWith(
          ResponseGetViewerAllAdminCourtAvailable value,
          $Res Function(ResponseGetViewerAllAdminCourtAvailable) then) =
      _$ResponseGetViewerAllAdminCourtAvailableCopyWithImpl<$Res,
          ResponseGetViewerAllAdminCourtAvailable>;
  @useResult
  $Res call(
      {@JsonKey(name: 'all_total_amount') int allTotalAmount,
      @JsonKey(name: 'court_booking')
      ResponseGetViewerAllAdminCourtBooking courtBooking});

  $ResponseGetViewerAllAdminCourtBookingCopyWith<$Res> get courtBooking;
}

/// @nodoc
class _$ResponseGetViewerAllAdminCourtAvailableCopyWithImpl<$Res,
        $Val extends ResponseGetViewerAllAdminCourtAvailable>
    implements $ResponseGetViewerAllAdminCourtAvailableCopyWith<$Res> {
  _$ResponseGetViewerAllAdminCourtAvailableCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allTotalAmount = null,
    Object? courtBooking = null,
  }) {
    return _then(_value.copyWith(
      allTotalAmount: null == allTotalAmount
          ? _value.allTotalAmount
          : allTotalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      courtBooking: null == courtBooking
          ? _value.courtBooking
          : courtBooking // ignore: cast_nullable_to_non_nullable
              as ResponseGetViewerAllAdminCourtBooking,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseGetViewerAllAdminCourtBookingCopyWith<$Res> get courtBooking {
    return $ResponseGetViewerAllAdminCourtBookingCopyWith<$Res>(
        _value.courtBooking, (value) {
      return _then(_value.copyWith(courtBooking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseGetViewerAllAdminCourtAvailableImplCopyWith<$Res>
    implements $ResponseGetViewerAllAdminCourtAvailableCopyWith<$Res> {
  factory _$$ResponseGetViewerAllAdminCourtAvailableImplCopyWith(
          _$ResponseGetViewerAllAdminCourtAvailableImpl value,
          $Res Function(_$ResponseGetViewerAllAdminCourtAvailableImpl) then) =
      __$$ResponseGetViewerAllAdminCourtAvailableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'all_total_amount') int allTotalAmount,
      @JsonKey(name: 'court_booking')
      ResponseGetViewerAllAdminCourtBooking courtBooking});

  @override
  $ResponseGetViewerAllAdminCourtBookingCopyWith<$Res> get courtBooking;
}

/// @nodoc
class __$$ResponseGetViewerAllAdminCourtAvailableImplCopyWithImpl<$Res>
    extends _$ResponseGetViewerAllAdminCourtAvailableCopyWithImpl<$Res,
        _$ResponseGetViewerAllAdminCourtAvailableImpl>
    implements _$$ResponseGetViewerAllAdminCourtAvailableImplCopyWith<$Res> {
  __$$ResponseGetViewerAllAdminCourtAvailableImplCopyWithImpl(
      _$ResponseGetViewerAllAdminCourtAvailableImpl _value,
      $Res Function(_$ResponseGetViewerAllAdminCourtAvailableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allTotalAmount = null,
    Object? courtBooking = null,
  }) {
    return _then(_$ResponseGetViewerAllAdminCourtAvailableImpl(
      allTotalAmount: null == allTotalAmount
          ? _value.allTotalAmount
          : allTotalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      courtBooking: null == courtBooking
          ? _value.courtBooking
          : courtBooking // ignore: cast_nullable_to_non_nullable
              as ResponseGetViewerAllAdminCourtBooking,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseGetViewerAllAdminCourtAvailableImpl
    implements _ResponseGetViewerAllAdminCourtAvailable {
  const _$ResponseGetViewerAllAdminCourtAvailableImpl(
      {@JsonKey(name: 'all_total_amount') this.allTotalAmount = 0,
      @JsonKey(name: 'court_booking')
      this.courtBooking = const ResponseGetViewerAllAdminCourtBooking()});

  factory _$ResponseGetViewerAllAdminCourtAvailableImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseGetViewerAllAdminCourtAvailableImplFromJson(json);

  @override
  @JsonKey(name: 'all_total_amount')
  final int allTotalAmount;
  @override
  @JsonKey(name: 'court_booking')
  final ResponseGetViewerAllAdminCourtBooking courtBooking;

  @override
  String toString() {
    return 'ResponseGetViewerAllAdminCourtAvailable(allTotalAmount: $allTotalAmount, courtBooking: $courtBooking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseGetViewerAllAdminCourtAvailableImpl &&
            (identical(other.allTotalAmount, allTotalAmount) ||
                other.allTotalAmount == allTotalAmount) &&
            (identical(other.courtBooking, courtBooking) ||
                other.courtBooking == courtBooking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, allTotalAmount, courtBooking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseGetViewerAllAdminCourtAvailableImplCopyWith<
          _$ResponseGetViewerAllAdminCourtAvailableImpl>
      get copyWith =>
          __$$ResponseGetViewerAllAdminCourtAvailableImplCopyWithImpl<
              _$ResponseGetViewerAllAdminCourtAvailableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseGetViewerAllAdminCourtAvailableImplToJson(
      this,
    );
  }
}

abstract class _ResponseGetViewerAllAdminCourtAvailable
    implements ResponseGetViewerAllAdminCourtAvailable {
  const factory _ResponseGetViewerAllAdminCourtAvailable(
          {@JsonKey(name: 'all_total_amount') final int allTotalAmount,
          @JsonKey(name: 'court_booking')
          final ResponseGetViewerAllAdminCourtBooking courtBooking}) =
      _$ResponseGetViewerAllAdminCourtAvailableImpl;

  factory _ResponseGetViewerAllAdminCourtAvailable.fromJson(
          Map<String, dynamic> json) =
      _$ResponseGetViewerAllAdminCourtAvailableImpl.fromJson;

  @override
  @JsonKey(name: 'all_total_amount')
  int get allTotalAmount;
  @override
  @JsonKey(name: 'court_booking')
  ResponseGetViewerAllAdminCourtBooking get courtBooking;
  @override
  @JsonKey(ignore: true)
  _$$ResponseGetViewerAllAdminCourtAvailableImplCopyWith<
          _$ResponseGetViewerAllAdminCourtAvailableImpl>
      get copyWith => throw _privateConstructorUsedError;
}
