// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_booking_data_court_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseBookingDataCourtModel _$ResponseBookingDataCourtModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseBookingDataCourtModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseBookingDataCourtModel {
  String get id => throw _privateConstructorUsedError;
  String get courtBookingId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  bool get available => throw _privateConstructorUsedError;
  List<String> get durationTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBookingDataCourtModelCopyWith<ResponseBookingDataCourtModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBookingDataCourtModelCopyWith<$Res> {
  factory $ResponseBookingDataCourtModelCopyWith(
          ResponseBookingDataCourtModel value,
          $Res Function(ResponseBookingDataCourtModel) then) =
      _$ResponseBookingDataCourtModelCopyWithImpl<$Res,
          ResponseBookingDataCourtModel>;
  @useResult
  $Res call(
      {String id,
      String courtBookingId,
      String createdAt,
      String updatedAt,
      String date,
      bool available,
      List<String> durationTime});
}

/// @nodoc
class _$ResponseBookingDataCourtModelCopyWithImpl<$Res,
        $Val extends ResponseBookingDataCourtModel>
    implements $ResponseBookingDataCourtModelCopyWith<$Res> {
  _$ResponseBookingDataCourtModelCopyWithImpl(this._value, this._then);

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
    Object? date = null,
    Object? available = null,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      durationTime: null == durationTime
          ? _value.durationTime
          : durationTime // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseBookingDataCourtModelImplCopyWith<$Res>
    implements $ResponseBookingDataCourtModelCopyWith<$Res> {
  factory _$$ResponseBookingDataCourtModelImplCopyWith(
          _$ResponseBookingDataCourtModelImpl value,
          $Res Function(_$ResponseBookingDataCourtModelImpl) then) =
      __$$ResponseBookingDataCourtModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String courtBookingId,
      String createdAt,
      String updatedAt,
      String date,
      bool available,
      List<String> durationTime});
}

/// @nodoc
class __$$ResponseBookingDataCourtModelImplCopyWithImpl<$Res>
    extends _$ResponseBookingDataCourtModelCopyWithImpl<$Res,
        _$ResponseBookingDataCourtModelImpl>
    implements _$$ResponseBookingDataCourtModelImplCopyWith<$Res> {
  __$$ResponseBookingDataCourtModelImplCopyWithImpl(
      _$ResponseBookingDataCourtModelImpl _value,
      $Res Function(_$ResponseBookingDataCourtModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courtBookingId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? date = null,
    Object? available = null,
    Object? durationTime = null,
  }) {
    return _then(_$ResponseBookingDataCourtModelImpl(
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      durationTime: null == durationTime
          ? _value._durationTime
          : durationTime // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBookingDataCourtModelImpl
    implements _ResponseBookingDataCourtModel {
  const _$ResponseBookingDataCourtModelImpl(
      {this.id = "",
      this.courtBookingId = "",
      this.createdAt = "",
      this.updatedAt = "",
      this.date = "",
      this.available = true,
      final List<String> durationTime = const []})
      : _durationTime = durationTime;

  factory _$ResponseBookingDataCourtModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseBookingDataCourtModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String courtBookingId;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final bool available;
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
    return 'ResponseBookingDataCourtModel(id: $id, courtBookingId: $courtBookingId, createdAt: $createdAt, updatedAt: $updatedAt, date: $date, available: $available, durationTime: $durationTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBookingDataCourtModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courtBookingId, courtBookingId) ||
                other.courtBookingId == courtBookingId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.available, available) ||
                other.available == available) &&
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
      date,
      available,
      const DeepCollectionEquality().hash(_durationTime));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseBookingDataCourtModelImplCopyWith<
          _$ResponseBookingDataCourtModelImpl>
      get copyWith => __$$ResponseBookingDataCourtModelImplCopyWithImpl<
          _$ResponseBookingDataCourtModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBookingDataCourtModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseBookingDataCourtModel
    implements ResponseBookingDataCourtModel {
  const factory _ResponseBookingDataCourtModel(
      {final String id,
      final String courtBookingId,
      final String createdAt,
      final String updatedAt,
      final String date,
      final bool available,
      final List<String> durationTime}) = _$ResponseBookingDataCourtModelImpl;

  factory _ResponseBookingDataCourtModel.fromJson(Map<String, dynamic> json) =
      _$ResponseBookingDataCourtModelImpl.fromJson;

  @override
  String get id;
  @override
  String get courtBookingId;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get date;
  @override
  bool get available;
  @override
  List<String> get durationTime;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBookingDataCourtModelImplCopyWith<
          _$ResponseBookingDataCourtModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
