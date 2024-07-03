// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'court_duration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourtDuration _$CourtDurationFromJson(Map<String, dynamic> json) {
  return _CourtDuration.fromJson(json);
}

/// @nodoc
mixin _$CourtDuration {
  String get date => throw _privateConstructorUsedError;
  List<String> get duration_time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourtDurationCopyWith<CourtDuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourtDurationCopyWith<$Res> {
  factory $CourtDurationCopyWith(
          CourtDuration value, $Res Function(CourtDuration) then) =
      _$CourtDurationCopyWithImpl<$Res, CourtDuration>;
  @useResult
  $Res call({String date, List<String> duration_time});
}

/// @nodoc
class _$CourtDurationCopyWithImpl<$Res, $Val extends CourtDuration>
    implements $CourtDurationCopyWith<$Res> {
  _$CourtDurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? duration_time = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      duration_time: null == duration_time
          ? _value.duration_time
          : duration_time // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourtDurationImplCopyWith<$Res>
    implements $CourtDurationCopyWith<$Res> {
  factory _$$CourtDurationImplCopyWith(
          _$CourtDurationImpl value, $Res Function(_$CourtDurationImpl) then) =
      __$$CourtDurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, List<String> duration_time});
}

/// @nodoc
class __$$CourtDurationImplCopyWithImpl<$Res>
    extends _$CourtDurationCopyWithImpl<$Res, _$CourtDurationImpl>
    implements _$$CourtDurationImplCopyWith<$Res> {
  __$$CourtDurationImplCopyWithImpl(
      _$CourtDurationImpl _value, $Res Function(_$CourtDurationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? duration_time = null,
  }) {
    return _then(_$CourtDurationImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      duration_time: null == duration_time
          ? _value._duration_time
          : duration_time // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourtDurationImpl implements _CourtDuration {
  _$CourtDurationImpl(
      {required this.date, final List<String> duration_time = const []})
      : _duration_time = duration_time;

  factory _$CourtDurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourtDurationImplFromJson(json);

  @override
  final String date;
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
    return 'CourtDuration(date: $date, duration_time: $duration_time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourtDurationImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._duration_time, _duration_time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_duration_time));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourtDurationImplCopyWith<_$CourtDurationImpl> get copyWith =>
      __$$CourtDurationImplCopyWithImpl<_$CourtDurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourtDurationImplToJson(
      this,
    );
  }
}

abstract class _CourtDuration implements CourtDuration {
  factory _CourtDuration(
      {required final String date,
      final List<String> duration_time}) = _$CourtDurationImpl;

  factory _CourtDuration.fromJson(Map<String, dynamic> json) =
      _$CourtDurationImpl.fromJson;

  @override
  String get date;
  @override
  List<String> get duration_time;
  @override
  @JsonKey(ignore: true)
  _$$CourtDurationImplCopyWith<_$CourtDurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
