// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_income_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyIncomeData _$WeeklyIncomeDataFromJson(Map<String, dynamic> json) {
  return _WeeklyIncomeData.fromJson(json);
}

/// @nodoc
mixin _$WeeklyIncomeData {
  @JsonKey(name: "days")
  List<DayIncome> get days => throw _privateConstructorUsedError;
  @JsonKey(name: "totalWeeklyIncome")
  int get totalWeeklyIncome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyIncomeDataCopyWith<WeeklyIncomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyIncomeDataCopyWith<$Res> {
  factory $WeeklyIncomeDataCopyWith(
          WeeklyIncomeData value, $Res Function(WeeklyIncomeData) then) =
      _$WeeklyIncomeDataCopyWithImpl<$Res, WeeklyIncomeData>;
  @useResult
  $Res call(
      {@JsonKey(name: "days") List<DayIncome> days,
      @JsonKey(name: "totalWeeklyIncome") int totalWeeklyIncome});
}

/// @nodoc
class _$WeeklyIncomeDataCopyWithImpl<$Res, $Val extends WeeklyIncomeData>
    implements $WeeklyIncomeDataCopyWith<$Res> {
  _$WeeklyIncomeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? totalWeeklyIncome = null,
  }) {
    return _then(_value.copyWith(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayIncome>,
      totalWeeklyIncome: null == totalWeeklyIncome
          ? _value.totalWeeklyIncome
          : totalWeeklyIncome // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeeklyIncomeDataImplCopyWith<$Res>
    implements $WeeklyIncomeDataCopyWith<$Res> {
  factory _$$WeeklyIncomeDataImplCopyWith(_$WeeklyIncomeDataImpl value,
          $Res Function(_$WeeklyIncomeDataImpl) then) =
      __$$WeeklyIncomeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "days") List<DayIncome> days,
      @JsonKey(name: "totalWeeklyIncome") int totalWeeklyIncome});
}

/// @nodoc
class __$$WeeklyIncomeDataImplCopyWithImpl<$Res>
    extends _$WeeklyIncomeDataCopyWithImpl<$Res, _$WeeklyIncomeDataImpl>
    implements _$$WeeklyIncomeDataImplCopyWith<$Res> {
  __$$WeeklyIncomeDataImplCopyWithImpl(_$WeeklyIncomeDataImpl _value,
      $Res Function(_$WeeklyIncomeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? totalWeeklyIncome = null,
  }) {
    return _then(_$WeeklyIncomeDataImpl(
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayIncome>,
      totalWeeklyIncome: null == totalWeeklyIncome
          ? _value.totalWeeklyIncome
          : totalWeeklyIncome // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyIncomeDataImpl implements _WeeklyIncomeData {
  const _$WeeklyIncomeDataImpl(
      {@JsonKey(name: "days") final List<DayIncome> days = const [],
      @JsonKey(name: "totalWeeklyIncome") this.totalWeeklyIncome = 0})
      : _days = days;

  factory _$WeeklyIncomeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyIncomeDataImplFromJson(json);

  final List<DayIncome> _days;
  @override
  @JsonKey(name: "days")
  List<DayIncome> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  @JsonKey(name: "totalWeeklyIncome")
  final int totalWeeklyIncome;

  @override
  String toString() {
    return 'WeeklyIncomeData(days: $days, totalWeeklyIncome: $totalWeeklyIncome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyIncomeDataImpl &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.totalWeeklyIncome, totalWeeklyIncome) ||
                other.totalWeeklyIncome == totalWeeklyIncome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_days), totalWeeklyIncome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyIncomeDataImplCopyWith<_$WeeklyIncomeDataImpl> get copyWith =>
      __$$WeeklyIncomeDataImplCopyWithImpl<_$WeeklyIncomeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyIncomeDataImplToJson(
      this,
    );
  }
}

abstract class _WeeklyIncomeData implements WeeklyIncomeData {
  const factory _WeeklyIncomeData(
          {@JsonKey(name: "days") final List<DayIncome> days,
          @JsonKey(name: "totalWeeklyIncome") final int totalWeeklyIncome}) =
      _$WeeklyIncomeDataImpl;

  factory _WeeklyIncomeData.fromJson(Map<String, dynamic> json) =
      _$WeeklyIncomeDataImpl.fromJson;

  @override
  @JsonKey(name: "days")
  List<DayIncome> get days;
  @override
  @JsonKey(name: "totalWeeklyIncome")
  int get totalWeeklyIncome;
  @override
  @JsonKey(ignore: true)
  _$$WeeklyIncomeDataImplCopyWith<_$WeeklyIncomeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
