// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'court_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourtResponse _$CourtResponseFromJson(Map<String, dynamic> json) {
  return _CourtResponse.fromJson(json);
}

/// @nodoc
mixin _$CourtResponse {
  String get id => throw _privateConstructorUsedError;
  String get courtBookingId => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  bool get available => throw _privateConstructorUsedError;
  List<String> get duration_time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourtResponseCopyWith<CourtResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourtResponseCopyWith<$Res> {
  factory $CourtResponseCopyWith(
          CourtResponse value, $Res Function(CourtResponse) then) =
      _$CourtResponseCopyWithImpl<$Res, CourtResponse>;
  @useResult
  $Res call(
      {String id,
      String courtBookingId,
      String created_at,
      String updated_at,
      String date,
      bool available,
      List<String> duration_time});
}

/// @nodoc
class _$CourtResponseCopyWithImpl<$Res, $Val extends CourtResponse>
    implements $CourtResponseCopyWith<$Res> {
  _$CourtResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courtBookingId = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? date = null,
    Object? available = null,
    Object? duration_time = null,
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
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      duration_time: null == duration_time
          ? _value.duration_time
          : duration_time // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourtResponseImplCopyWith<$Res>
    implements $CourtResponseCopyWith<$Res> {
  factory _$$CourtResponseImplCopyWith(
          _$CourtResponseImpl value, $Res Function(_$CourtResponseImpl) then) =
      __$$CourtResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String courtBookingId,
      String created_at,
      String updated_at,
      String date,
      bool available,
      List<String> duration_time});
}

/// @nodoc
class __$$CourtResponseImplCopyWithImpl<$Res>
    extends _$CourtResponseCopyWithImpl<$Res, _$CourtResponseImpl>
    implements _$$CourtResponseImplCopyWith<$Res> {
  __$$CourtResponseImplCopyWithImpl(
      _$CourtResponseImpl _value, $Res Function(_$CourtResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courtBookingId = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? date = null,
    Object? available = null,
    Object? duration_time = null,
  }) {
    return _then(_$CourtResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courtBookingId: null == courtBookingId
          ? _value.courtBookingId
          : courtBookingId // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      duration_time: null == duration_time
          ? _value._duration_time
          : duration_time // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourtResponseImpl implements _CourtResponse {
  _$CourtResponseImpl(
      {required this.id,
      required this.courtBookingId,
      required this.created_at,
      required this.updated_at,
      required this.date,
      this.available = true,
      final List<String> duration_time = const []})
      : _duration_time = duration_time;

  factory _$CourtResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourtResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String courtBookingId;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  final String date;
  @override
  @JsonKey()
  final bool available;
  final List<String> _duration_time;
  @override
  @JsonKey()
  List<String> get duration_time {
    if (_duration_time is EqualUnmodifiableListView) return _duration_time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_duration_time);
  }

  @override
  String toString() {
    return 'CourtResponse(id: $id, courtBookingId: $courtBookingId, created_at: $created_at, updated_at: $updated_at, date: $date, available: $available, duration_time: $duration_time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourtResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courtBookingId, courtBookingId) ||
                other.courtBookingId == courtBookingId) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.available, available) ||
                other.available == available) &&
            const DeepCollectionEquality()
                .equals(other._duration_time, _duration_time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      courtBookingId,
      created_at,
      updated_at,
      date,
      available,
      const DeepCollectionEquality().hash(_duration_time));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourtResponseImplCopyWith<_$CourtResponseImpl> get copyWith =>
      __$$CourtResponseImplCopyWithImpl<_$CourtResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourtResponseImplToJson(
      this,
    );
  }
}

abstract class _CourtResponse implements CourtResponse {
  factory _CourtResponse(
      {required final String id,
      required final String courtBookingId,
      required final String created_at,
      required final String updated_at,
      required final String date,
      final bool available,
      final List<String> duration_time}) = _$CourtResponseImpl;

  factory _CourtResponse.fromJson(Map<String, dynamic> json) =
      _$CourtResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get courtBookingId;
  @override
  String get created_at;
  @override
  String get updated_at;
  @override
  String get date;
  @override
  bool get available;
  @override
  List<String> get duration_time;
  @override
  @JsonKey(ignore: true)
  _$$CourtResponseImplCopyWith<_$CourtResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
