// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_court.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListCourt _$ListCourtFromJson(Map<String, dynamic> json) {
  return _ListCourt.fromJson(json);
}

/// @nodoc
mixin _$ListCourt {
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_time')
  List<String> get durationTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListCourtCopyWith<ListCourt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCourtCopyWith<$Res> {
  factory $ListCourtCopyWith(ListCourt value, $Res Function(ListCourt) then) =
      _$ListCourtCopyWithImpl<$Res, ListCourt>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String date,
      @JsonKey(name: 'duration_time') List<String> durationTime});
}

/// @nodoc
class _$ListCourtCopyWithImpl<$Res, $Val extends ListCourt>
    implements $ListCourtCopyWith<$Res> {
  _$ListCourtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? durationTime = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListCourtImplCopyWith<$Res>
    implements $ListCourtCopyWith<$Res> {
  factory _$$ListCourtImplCopyWith(
          _$ListCourtImpl value, $Res Function(_$ListCourtImpl) then) =
      __$$ListCourtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String date,
      @JsonKey(name: 'duration_time') List<String> durationTime});
}

/// @nodoc
class __$$ListCourtImplCopyWithImpl<$Res>
    extends _$ListCourtCopyWithImpl<$Res, _$ListCourtImpl>
    implements _$$ListCourtImplCopyWith<$Res> {
  __$$ListCourtImplCopyWithImpl(
      _$ListCourtImpl _value, $Res Function(_$ListCourtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? durationTime = null,
  }) {
    return _then(_$ListCourtImpl(
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
class _$ListCourtImpl implements _ListCourt {
  const _$ListCourtImpl(
      {@JsonKey(name: 'date') this.date = '',
      @JsonKey(name: 'duration_time')
      final List<String> durationTime = const []})
      : _durationTime = durationTime;

  factory _$ListCourtImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListCourtImplFromJson(json);

  @override
  @JsonKey(name: 'date')
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
    return 'ListCourt(date: $date, durationTime: $durationTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListCourtImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._durationTime, _durationTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_durationTime));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListCourtImplCopyWith<_$ListCourtImpl> get copyWith =>
      __$$ListCourtImplCopyWithImpl<_$ListCourtImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListCourtImplToJson(
      this,
    );
  }
}

abstract class _ListCourt implements ListCourt {
  const factory _ListCourt(
          {@JsonKey(name: 'date') final String date,
          @JsonKey(name: 'duration_time') final List<String> durationTime}) =
      _$ListCourtImpl;

  factory _ListCourt.fromJson(Map<String, dynamic> json) =
      _$ListCourtImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(name: 'duration_time')
  List<String> get durationTime;
  @override
  @JsonKey(ignore: true)
  _$$ListCourtImplCopyWith<_$ListCourtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
