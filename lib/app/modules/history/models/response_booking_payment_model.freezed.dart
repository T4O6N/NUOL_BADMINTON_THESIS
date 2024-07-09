// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_booking_payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseBookingPaymentModel _$ResponseBookingPaymentModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseBookingPaymentModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseBookingPaymentModel {
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_time')
  String get paymentTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'court_booking')
  ResponseCourtBookingModel get courtBooking =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBookingPaymentModelCopyWith<ResponseBookingPaymentModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBookingPaymentModelCopyWith<$Res> {
  factory $ResponseBookingPaymentModelCopyWith(
          ResponseBookingPaymentModel value,
          $Res Function(ResponseBookingPaymentModel) then) =
      _$ResponseBookingPaymentModelCopyWithImpl<$Res,
          ResponseBookingPaymentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String date,
      @JsonKey(name: 'payment_time') String paymentTime,
      @JsonKey(name: 'court_booking') ResponseCourtBookingModel courtBooking});

  $ResponseCourtBookingModelCopyWith<$Res> get courtBooking;
}

/// @nodoc
class _$ResponseBookingPaymentModelCopyWithImpl<$Res,
        $Val extends ResponseBookingPaymentModel>
    implements $ResponseBookingPaymentModelCopyWith<$Res> {
  _$ResponseBookingPaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? paymentTime = null,
    Object? courtBooking = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTime: null == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as String,
      courtBooking: null == courtBooking
          ? _value.courtBooking
          : courtBooking // ignore: cast_nullable_to_non_nullable
              as ResponseCourtBookingModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseCourtBookingModelCopyWith<$Res> get courtBooking {
    return $ResponseCourtBookingModelCopyWith<$Res>(_value.courtBooking,
        (value) {
      return _then(_value.copyWith(courtBooking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseBookingPaymentModelImplCopyWith<$Res>
    implements $ResponseBookingPaymentModelCopyWith<$Res> {
  factory _$$ResponseBookingPaymentModelImplCopyWith(
          _$ResponseBookingPaymentModelImpl value,
          $Res Function(_$ResponseBookingPaymentModelImpl) then) =
      __$$ResponseBookingPaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String date,
      @JsonKey(name: 'payment_time') String paymentTime,
      @JsonKey(name: 'court_booking') ResponseCourtBookingModel courtBooking});

  @override
  $ResponseCourtBookingModelCopyWith<$Res> get courtBooking;
}

/// @nodoc
class __$$ResponseBookingPaymentModelImplCopyWithImpl<$Res>
    extends _$ResponseBookingPaymentModelCopyWithImpl<$Res,
        _$ResponseBookingPaymentModelImpl>
    implements _$$ResponseBookingPaymentModelImplCopyWith<$Res> {
  __$$ResponseBookingPaymentModelImplCopyWithImpl(
      _$ResponseBookingPaymentModelImpl _value,
      $Res Function(_$ResponseBookingPaymentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? paymentTime = null,
    Object? courtBooking = null,
  }) {
    return _then(_$ResponseBookingPaymentModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTime: null == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as String,
      courtBooking: null == courtBooking
          ? _value.courtBooking
          : courtBooking // ignore: cast_nullable_to_non_nullable
              as ResponseCourtBookingModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBookingPaymentModelImpl
    implements _ResponseBookingPaymentModel {
  const _$ResponseBookingPaymentModelImpl(
      {@JsonKey(name: 'date') this.date = "",
      @JsonKey(name: 'payment_time') this.paymentTime = "",
      @JsonKey(name: 'court_booking')
      this.courtBooking = const ResponseCourtBookingModel()});

  factory _$ResponseBookingPaymentModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseBookingPaymentModelImplFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String date;
  @override
  @JsonKey(name: 'payment_time')
  final String paymentTime;
  @override
  @JsonKey(name: 'court_booking')
  final ResponseCourtBookingModel courtBooking;

  @override
  String toString() {
    return 'ResponseBookingPaymentModel(date: $date, paymentTime: $paymentTime, courtBooking: $courtBooking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBookingPaymentModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.paymentTime, paymentTime) ||
                other.paymentTime == paymentTime) &&
            (identical(other.courtBooking, courtBooking) ||
                other.courtBooking == courtBooking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, paymentTime, courtBooking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseBookingPaymentModelImplCopyWith<_$ResponseBookingPaymentModelImpl>
      get copyWith => __$$ResponseBookingPaymentModelImplCopyWithImpl<
          _$ResponseBookingPaymentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBookingPaymentModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseBookingPaymentModel
    implements ResponseBookingPaymentModel {
  const factory _ResponseBookingPaymentModel(
          {@JsonKey(name: 'date') final String date,
          @JsonKey(name: 'payment_time') final String paymentTime,
          @JsonKey(name: 'court_booking')
          final ResponseCourtBookingModel courtBooking}) =
      _$ResponseBookingPaymentModelImpl;

  factory _ResponseBookingPaymentModel.fromJson(Map<String, dynamic> json) =
      _$ResponseBookingPaymentModelImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(name: 'payment_time')
  String get paymentTime;
  @override
  @JsonKey(name: 'court_booking')
  ResponseCourtBookingModel get courtBooking;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBookingPaymentModelImplCopyWith<_$ResponseBookingPaymentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
