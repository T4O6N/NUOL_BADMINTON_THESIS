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
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'court_booking_id')
  String get courtBookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  int get totalAllCourtAvailable => throw _privateConstructorUsedError;
  bool get isExpiredAll => throw _privateConstructorUsedError;
  @JsonKey(name: 'all_total_amount')
  int get allTotalAmount => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_time')
  List<String> get durationTime => throw _privateConstructorUsedError;

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
      {String id,
      @JsonKey(name: 'court_booking_id') String courtBookingId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      int totalAllCourtAvailable,
      bool isExpiredAll,
      @JsonKey(name: 'all_total_amount') int allTotalAmount,
      String date,
      @JsonKey(name: 'duration_time') List<String> durationTime});
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
    Object? id = null,
    Object? courtBookingId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? totalAllCourtAvailable = null,
    Object? isExpiredAll = null,
    Object? allTotalAmount = null,
    Object? date = null,
    Object? durationTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courtBookingId: null == courtBookingId
          ? _value.courtBookingId
          : courtBookingId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      totalAllCourtAvailable: null == totalAllCourtAvailable
          ? _value.totalAllCourtAvailable
          : totalAllCourtAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      isExpiredAll: null == isExpiredAll
          ? _value.isExpiredAll
          : isExpiredAll // ignore: cast_nullable_to_non_nullable
              as bool,
      allTotalAmount: null == allTotalAmount
          ? _value.allTotalAmount
          : allTotalAmount // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ResponseBookingDataCourtAvailableModelImplCopyWith<$Res>
    implements $ResponseBookingDataCourtAvailableModelCopyWith<$Res> {
  factory _$$ResponseBookingDataCourtAvailableModelImplCopyWith(
          _$ResponseBookingDataCourtAvailableModelImpl value,
          $Res Function(_$ResponseBookingDataCourtAvailableModelImpl) then) =
      __$$ResponseBookingDataCourtAvailableModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'court_booking_id') String courtBookingId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      int totalAllCourtAvailable,
      bool isExpiredAll,
      @JsonKey(name: 'all_total_amount') int allTotalAmount,
      String date,
      @JsonKey(name: 'duration_time') List<String> durationTime});
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
    Object? id = null,
    Object? courtBookingId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? totalAllCourtAvailable = null,
    Object? isExpiredAll = null,
    Object? allTotalAmount = null,
    Object? date = null,
    Object? durationTime = null,
  }) {
    return _then(_$ResponseBookingDataCourtAvailableModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courtBookingId: null == courtBookingId
          ? _value.courtBookingId
          : courtBookingId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      totalAllCourtAvailable: null == totalAllCourtAvailable
          ? _value.totalAllCourtAvailable
          : totalAllCourtAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      isExpiredAll: null == isExpiredAll
          ? _value.isExpiredAll
          : isExpiredAll // ignore: cast_nullable_to_non_nullable
              as bool,
      allTotalAmount: null == allTotalAmount
          ? _value.allTotalAmount
          : allTotalAmount // ignore: cast_nullable_to_non_nullable
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
class _$ResponseBookingDataCourtAvailableModelImpl
    implements _ResponseBookingDataCourtAvailableModel {
  const _$ResponseBookingDataCourtAvailableModelImpl(
      {this.id = "",
      @JsonKey(name: 'court_booking_id') this.courtBookingId = "",
      @JsonKey(name: 'created_at') this.createdAt = "",
      @JsonKey(name: 'updated_at') this.updatedAt = "",
      this.totalAllCourtAvailable = 0,
      this.isExpiredAll = false,
      @JsonKey(name: 'all_total_amount') this.allTotalAmount = 0,
      this.date = "",
      @JsonKey(name: 'duration_time')
      final List<String> durationTime = const []})
      : _durationTime = durationTime;

  factory _$ResponseBookingDataCourtAvailableModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseBookingDataCourtAvailableModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey(name: 'court_booking_id')
  final String courtBookingId;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey()
  final int totalAllCourtAvailable;
  @override
  @JsonKey()
  final bool isExpiredAll;
  @override
  @JsonKey(name: 'all_total_amount')
  final int allTotalAmount;
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
  String toString() {
    return 'ResponseBookingDataCourtAvailableModel(id: $id, courtBookingId: $courtBookingId, createdAt: $createdAt, updatedAt: $updatedAt, totalAllCourtAvailable: $totalAllCourtAvailable, isExpiredAll: $isExpiredAll, allTotalAmount: $allTotalAmount, date: $date, durationTime: $durationTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBookingDataCourtAvailableModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courtBookingId, courtBookingId) ||
                other.courtBookingId == courtBookingId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.totalAllCourtAvailable, totalAllCourtAvailable) ||
                other.totalAllCourtAvailable == totalAllCourtAvailable) &&
            (identical(other.isExpiredAll, isExpiredAll) ||
                other.isExpiredAll == isExpiredAll) &&
            (identical(other.allTotalAmount, allTotalAmount) ||
                other.allTotalAmount == allTotalAmount) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._durationTime, _durationTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      courtBookingId,
      createdAt,
      updatedAt,
      totalAllCourtAvailable,
      isExpiredAll,
      allTotalAmount,
      date,
      const DeepCollectionEquality().hash(_durationTime));

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
          {final String id,
          @JsonKey(name: 'court_booking_id') final String courtBookingId,
          @JsonKey(name: 'created_at') final String createdAt,
          @JsonKey(name: 'updated_at') final String updatedAt,
          final int totalAllCourtAvailable,
          final bool isExpiredAll,
          @JsonKey(name: 'all_total_amount') final int allTotalAmount,
          final String date,
          @JsonKey(name: 'duration_time') final List<String> durationTime}) =
      _$ResponseBookingDataCourtAvailableModelImpl;

  factory _ResponseBookingDataCourtAvailableModel.fromJson(
          Map<String, dynamic> json) =
      _$ResponseBookingDataCourtAvailableModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'court_booking_id')
  String get courtBookingId;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  int get totalAllCourtAvailable;
  @override
  bool get isExpiredAll;
  @override
  @JsonKey(name: 'all_total_amount')
  int get allTotalAmount;
  @override
  String get date;
  @override
  @JsonKey(name: 'duration_time')
  List<String> get durationTime;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBookingDataCourtAvailableModelImplCopyWith<
          _$ResponseBookingDataCourtAvailableModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
