// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_income.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DayIncome _$DayIncomeFromJson(Map<String, dynamic> json) {
  return _DayIncome.fromJson(json);
}

/// @nodoc
mixin _$DayIncome {
  @JsonKey(name: "day")
  String get day => throw _privateConstructorUsedError;
  @JsonKey(name: "income")
  int get income => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayIncomeCopyWith<DayIncome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayIncomeCopyWith<$Res> {
  factory $DayIncomeCopyWith(DayIncome value, $Res Function(DayIncome) then) =
      _$DayIncomeCopyWithImpl<$Res, DayIncome>;
  @useResult
  $Res call(
      {@JsonKey(name: "day") String day, @JsonKey(name: "income") int income});
}

/// @nodoc
class _$DayIncomeCopyWithImpl<$Res, $Val extends DayIncome>
    implements $DayIncomeCopyWith<$Res> {
  _$DayIncomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? income = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayIncomeImplCopyWith<$Res>
    implements $DayIncomeCopyWith<$Res> {
  factory _$$DayIncomeImplCopyWith(
          _$DayIncomeImpl value, $Res Function(_$DayIncomeImpl) then) =
      __$$DayIncomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "day") String day, @JsonKey(name: "income") int income});
}

/// @nodoc
class __$$DayIncomeImplCopyWithImpl<$Res>
    extends _$DayIncomeCopyWithImpl<$Res, _$DayIncomeImpl>
    implements _$$DayIncomeImplCopyWith<$Res> {
  __$$DayIncomeImplCopyWithImpl(
      _$DayIncomeImpl _value, $Res Function(_$DayIncomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? income = null,
  }) {
    return _then(_$DayIncomeImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayIncomeImpl implements _DayIncome {
  const _$DayIncomeImpl(
      {@JsonKey(name: "day") this.day = "",
      @JsonKey(name: "income") this.income = 0});

  factory _$DayIncomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayIncomeImplFromJson(json);

  @override
  @JsonKey(name: "day")
  final String day;
  @override
  @JsonKey(name: "income")
  final int income;

  @override
  String toString() {
    return 'DayIncome(day: $day, income: $income)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayIncomeImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.income, income) || other.income == income));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, income);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayIncomeImplCopyWith<_$DayIncomeImpl> get copyWith =>
      __$$DayIncomeImplCopyWithImpl<_$DayIncomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayIncomeImplToJson(
      this,
    );
  }
}

abstract class _DayIncome implements DayIncome {
  const factory _DayIncome(
      {@JsonKey(name: "day") final String day,
      @JsonKey(name: "income") final int income}) = _$DayIncomeImpl;

  factory _DayIncome.fromJson(Map<String, dynamic> json) =
      _$DayIncomeImpl.fromJson;

  @override
  @JsonKey(name: "day")
  String get day;
  @override
  @JsonKey(name: "income")
  int get income;
  @override
  @JsonKey(ignore: true)
  _$$DayIncomeImplCopyWith<_$DayIncomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
