// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_booking_court_duration_time_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBookingCourtDurationTimeParam
    _$CreateBookingCourtDurationTimeParamFromJson(Map<String, dynamic> json) {
  return _CreateBookingCourtDurationTimeParam.fromJson(json);
}

/// @nodoc
mixin _$CreateBookingCourtDurationTimeParam {
  String get courtNumber => throw _privateConstructorUsedError;
  int get courtPrice => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  List<String> get durationTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBookingCourtDurationTimeParamCopyWith<
          CreateBookingCourtDurationTimeParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBookingCourtDurationTimeParamCopyWith<$Res> {
  factory $CreateBookingCourtDurationTimeParamCopyWith(
          CreateBookingCourtDurationTimeParam value,
          $Res Function(CreateBookingCourtDurationTimeParam) then) =
      _$CreateBookingCourtDurationTimeParamCopyWithImpl<$Res,
          CreateBookingCourtDurationTimeParam>;
  @useResult
  $Res call(
      {String courtNumber,
      int courtPrice,
      String date,
      List<String> durationTime});
}

/// @nodoc
class _$CreateBookingCourtDurationTimeParamCopyWithImpl<$Res,
        $Val extends CreateBookingCourtDurationTimeParam>
    implements $CreateBookingCourtDurationTimeParamCopyWith<$Res> {
  _$CreateBookingCourtDurationTimeParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtNumber = null,
    Object? courtPrice = null,
    Object? date = null,
    Object? durationTime = null,
  }) {
    return _then(_value.copyWith(
      courtNumber: null == courtNumber
          ? _value.courtNumber
          : courtNumber // ignore: cast_nullable_to_non_nullable
              as String,
      courtPrice: null == courtPrice
          ? _value.courtPrice
          : courtPrice // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      durationTime: null == durationTime
          ? _value.durationTime
          : durationTime // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBookingCourtDurationTimeParamImplCopyWith<$Res>
    implements $CreateBookingCourtDurationTimeParamCopyWith<$Res> {
  factory _$$CreateBookingCourtDurationTimeParamImplCopyWith(
          _$CreateBookingCourtDurationTimeParamImpl value,
          $Res Function(_$CreateBookingCourtDurationTimeParamImpl) then) =
      __$$CreateBookingCourtDurationTimeParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String courtNumber,
      int courtPrice,
      String date,
      List<String> durationTime});
}

/// @nodoc
class __$$CreateBookingCourtDurationTimeParamImplCopyWithImpl<$Res>
    extends _$CreateBookingCourtDurationTimeParamCopyWithImpl<$Res,
        _$CreateBookingCourtDurationTimeParamImpl>
    implements _$$CreateBookingCourtDurationTimeParamImplCopyWith<$Res> {
  __$$CreateBookingCourtDurationTimeParamImplCopyWithImpl(
      _$CreateBookingCourtDurationTimeParamImpl _value,
      $Res Function(_$CreateBookingCourtDurationTimeParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtNumber = null,
    Object? courtPrice = null,
    Object? date = null,
    Object? durationTime = null,
  }) {
    return _then(_$CreateBookingCourtDurationTimeParamImpl(
      courtNumber: null == courtNumber
          ? _value.courtNumber
          : courtNumber // ignore: cast_nullable_to_non_nullable
              as String,
      courtPrice: null == courtPrice
          ? _value.courtPrice
          : courtPrice // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      durationTime: null == durationTime
          ? _value._durationTime
          : durationTime // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBookingCourtDurationTimeParamImpl
    implements _CreateBookingCourtDurationTimeParam {
  const _$CreateBookingCourtDurationTimeParamImpl(
      {this.courtNumber = '',
      this.courtPrice = 0,
      this.date = '',
      final List<String> durationTime = const []})
      : _durationTime = durationTime;

  factory _$CreateBookingCourtDurationTimeParamImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateBookingCourtDurationTimeParamImplFromJson(json);

  @override
  @JsonKey()
  final String courtNumber;
  @override
  @JsonKey()
  final int courtPrice;
  @override
  @JsonKey()
  final String date;
  final List<String> _durationTime;
  @override
  @JsonKey()
  List<String> get durationTime {
    if (_durationTime is EqualUnmodifiableListView) return _durationTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_durationTime);
  }

  @override
  String toString() {
    return 'CreateBookingCourtDurationTimeParam(courtNumber: $courtNumber, courtPrice: $courtPrice, date: $date, durationTime: $durationTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookingCourtDurationTimeParamImpl &&
            (identical(other.courtNumber, courtNumber) ||
                other.courtNumber == courtNumber) &&
            (identical(other.courtPrice, courtPrice) ||
                other.courtPrice == courtPrice) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._durationTime, _durationTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, courtNumber, courtPrice, date,
      const DeepCollectionEquality().hash(_durationTime));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookingCourtDurationTimeParamImplCopyWith<
          _$CreateBookingCourtDurationTimeParamImpl>
      get copyWith => __$$CreateBookingCourtDurationTimeParamImplCopyWithImpl<
          _$CreateBookingCourtDurationTimeParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBookingCourtDurationTimeParamImplToJson(
      this,
    );
  }
}

abstract class _CreateBookingCourtDurationTimeParam
    implements CreateBookingCourtDurationTimeParam {
  const factory _CreateBookingCourtDurationTimeParam(
          {final String courtNumber,
          final int courtPrice,
          final String date,
          final List<String> durationTime}) =
      _$CreateBookingCourtDurationTimeParamImpl;

  factory _CreateBookingCourtDurationTimeParam.fromJson(
          Map<String, dynamic> json) =
      _$CreateBookingCourtDurationTimeParamImpl.fromJson;

  @override
  String get courtNumber;
  @override
  int get courtPrice;
  @override
  String get date;
  @override
  List<String> get durationTime;
  @override
  @JsonKey(ignore: true)
  _$$CreateBookingCourtDurationTimeParamImplCopyWith<
          _$CreateBookingCourtDurationTimeParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
