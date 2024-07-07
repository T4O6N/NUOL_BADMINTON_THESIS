// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_booking_data_court_available_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseBookingDataCourtAvailableModel
    _$ResponseBookingDataCourtAvailableModelFromJson(
        Map<String, dynamic> json) {
  return _ResponseBookingDataCourtAvailableModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseBookingDataCourtAvailableModel {
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_time')
  List<String> get durationTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  int get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_message')
  List<String> get statusMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBookingDataCourtAvailableModelCopyWith<
          ResponseBookingDataCourtAvailableModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBookingDataCourtAvailableModelCopyWith<$Res> {
  factory $ResponseBookingDataCourtAvailableModelCopyWith(
          ResponseBookingDataCourtAvailableModel value,
          $Res Function(ResponseBookingDataCourtAvailableModel) then) =
      _$ResponseBookingDataCourtAvailableModelCopyWithImpl<$Res,
          ResponseBookingDataCourtAvailableModel>;
  @useResult
  $Res call(
      {String date,
      @JsonKey(name: 'duration_time') List<String> durationTime,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'status_message') List<String> statusMessage});
}

/// @nodoc
class _$ResponseBookingDataCourtAvailableModelCopyWithImpl<$Res,
        $Val extends ResponseBookingDataCourtAvailableModel>
    implements $ResponseBookingDataCourtAvailableModelCopyWith<$Res> {
  _$ResponseBookingDataCourtAvailableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? durationTime = null,
    Object? totalAmount = null,
    Object? statusMessage = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      durationTime: null == durationTime
          ? _value.durationTime
          : durationTime // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      statusMessage: null == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseBookingDataCourtAvailableModelImplCopyWith<$Res>
    implements $ResponseBookingDataCourtAvailableModelCopyWith<$Res> {
  factory _$$ResponseBookingDataCourtAvailableModelImplCopyWith(
          _$ResponseBookingDataCourtAvailableModelImpl value,
          $Res Function(_$ResponseBookingDataCourtAvailableModelImpl) then) =
      __$$ResponseBookingDataCourtAvailableModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      @JsonKey(name: 'duration_time') List<String> durationTime,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'status_message') List<String> statusMessage});
}

/// @nodoc
class __$$ResponseBookingDataCourtAvailableModelImplCopyWithImpl<$Res>
    extends _$ResponseBookingDataCourtAvailableModelCopyWithImpl<$Res,
        _$ResponseBookingDataCourtAvailableModelImpl>
    implements _$$ResponseBookingDataCourtAvailableModelImplCopyWith<$Res> {
  __$$ResponseBookingDataCourtAvailableModelImplCopyWithImpl(
      _$ResponseBookingDataCourtAvailableModelImpl _value,
      $Res Function(_$ResponseBookingDataCourtAvailableModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? durationTime = null,
    Object? totalAmount = null,
    Object? statusMessage = null,
  }) {
    return _then(_$ResponseBookingDataCourtAvailableModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      durationTime: null == durationTime
          ? _value._durationTime
          : durationTime // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      statusMessage: null == statusMessage
          ? _value._statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBookingDataCourtAvailableModelImpl
    implements _ResponseBookingDataCourtAvailableModel {
  const _$ResponseBookingDataCourtAvailableModelImpl(
      {this.date = "",
      @JsonKey(name: 'duration_time')
      final List<String> durationTime = const [],
      @JsonKey(name: 'total_amount') this.totalAmount = 0,
      @JsonKey(name: 'status_message')
      final List<String> statusMessage = const []})
      : _durationTime = durationTime,
        _statusMessage = statusMessage;

  factory _$ResponseBookingDataCourtAvailableModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseBookingDataCourtAvailableModelImplFromJson(json);

  @override
  @JsonKey()
  final String date;
  final List<String> _durationTime;
  @override
  @JsonKey(name: 'duration_time')
  List<String> get durationTime {
    if (_durationTime is EqualUnmodifiableListView) return _durationTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_durationTime);
  }

  @override
  @JsonKey(name: 'total_amount')
  final int totalAmount;
  final List<String> _statusMessage;
  @override
  @JsonKey(name: 'status_message')
  List<String> get statusMessage {
    if (_statusMessage is EqualUnmodifiableListView) return _statusMessage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusMessage);
  }

  @override
  String toString() {
    return 'ResponseBookingDataCourtAvailableModel(date: $date, durationTime: $durationTime, totalAmount: $totalAmount, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBookingDataCourtAvailableModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._durationTime, _durationTime) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            const DeepCollectionEquality()
                .equals(other._statusMessage, _statusMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      const DeepCollectionEquality().hash(_durationTime),
      totalAmount,
      const DeepCollectionEquality().hash(_statusMessage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseBookingDataCourtAvailableModelImplCopyWith<
          _$ResponseBookingDataCourtAvailableModelImpl>
      get copyWith =>
          __$$ResponseBookingDataCourtAvailableModelImplCopyWithImpl<
              _$ResponseBookingDataCourtAvailableModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBookingDataCourtAvailableModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseBookingDataCourtAvailableModel
    implements ResponseBookingDataCourtAvailableModel {
  const factory _ResponseBookingDataCourtAvailableModel(
          {final String date,
          @JsonKey(name: 'duration_time') final List<String> durationTime,
          @JsonKey(name: 'total_amount') final int totalAmount,
          @JsonKey(name: 'status_message') final List<String> statusMessage}) =
      _$ResponseBookingDataCourtAvailableModelImpl;

  factory _ResponseBookingDataCourtAvailableModel.fromJson(
          Map<String, dynamic> json) =
      _$ResponseBookingDataCourtAvailableModelImpl.fromJson;

  @override
  String get date;
  @override
  @JsonKey(name: 'duration_time')
  List<String> get durationTime;
  @override
  @JsonKey(name: 'total_amount')
  int get totalAmount;
  @override
  @JsonKey(name: 'status_message')
  List<String> get statusMessage;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBookingDataCourtAvailableModelImplCopyWith<
          _$ResponseBookingDataCourtAvailableModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
