// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_income_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyIncomeData _$DailyIncomeDataFromJson(Map<String, dynamic> json) {
  return _DailyIncomeData.fromJson(json);
}

/// @nodoc
mixin _$DailyIncomeData {
  String get day => throw _privateConstructorUsedError;
  @JsonKey(name: "daily_income")
  int get dailyIncome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyIncomeDataCopyWith<DailyIncomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyIncomeDataCopyWith<$Res> {
  factory $DailyIncomeDataCopyWith(
          DailyIncomeData value, $Res Function(DailyIncomeData) then) =
      _$DailyIncomeDataCopyWithImpl<$Res, DailyIncomeData>;
  @useResult
  $Res call({String day, @JsonKey(name: "daily_income") int dailyIncome});
}

/// @nodoc
class _$DailyIncomeDataCopyWithImpl<$Res, $Val extends DailyIncomeData>
    implements $DailyIncomeDataCopyWith<$Res> {
  _$DailyIncomeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? dailyIncome = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      dailyIncome: null == dailyIncome
          ? _value.dailyIncome
          : dailyIncome // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyIncomeDataImplCopyWith<$Res>
    implements $DailyIncomeDataCopyWith<$Res> {
  factory _$$DailyIncomeDataImplCopyWith(_$DailyIncomeDataImpl value,
          $Res Function(_$DailyIncomeDataImpl) then) =
      __$$DailyIncomeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, @JsonKey(name: "daily_income") int dailyIncome});
}

/// @nodoc
class __$$DailyIncomeDataImplCopyWithImpl<$Res>
    extends _$DailyIncomeDataCopyWithImpl<$Res, _$DailyIncomeDataImpl>
    implements _$$DailyIncomeDataImplCopyWith<$Res> {
  __$$DailyIncomeDataImplCopyWithImpl(
      _$DailyIncomeDataImpl _value, $Res Function(_$DailyIncomeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? dailyIncome = null,
  }) {
    return _then(_$DailyIncomeDataImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      dailyIncome: null == dailyIncome
          ? _value.dailyIncome
          : dailyIncome // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyIncomeDataImpl implements _DailyIncomeData {
  const _$DailyIncomeDataImpl(
      {this.day = "", @JsonKey(name: "daily_income") this.dailyIncome = 0});

  factory _$DailyIncomeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyIncomeDataImplFromJson(json);

  @override
  @JsonKey()
  final String day;
  @override
  @JsonKey(name: "daily_income")
  final int dailyIncome;

  @override
  String toString() {
    return 'DailyIncomeData(day: $day, dailyIncome: $dailyIncome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyIncomeDataImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.dailyIncome, dailyIncome) ||
                other.dailyIncome == dailyIncome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, dailyIncome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyIncomeDataImplCopyWith<_$DailyIncomeDataImpl> get copyWith =>
      __$$DailyIncomeDataImplCopyWithImpl<_$DailyIncomeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyIncomeDataImplToJson(
      this,
    );
  }
}

abstract class _DailyIncomeData implements DailyIncomeData {
  const factory _DailyIncomeData(
          {final String day,
          @JsonKey(name: "daily_income") final int dailyIncome}) =
      _$DailyIncomeDataImpl;

  factory _DailyIncomeData.fromJson(Map<String, dynamic> json) =
      _$DailyIncomeDataImpl.fromJson;

  @override
  String get day;
  @override
  @JsonKey(name: "daily_income")
  int get dailyIncome;
  @override
  @JsonKey(ignore: true)
  _$$DailyIncomeDataImplCopyWith<_$DailyIncomeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
