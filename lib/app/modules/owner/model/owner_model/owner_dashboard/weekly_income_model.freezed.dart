// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_income_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyIncomeModel _$WeeklyIncomeModelFromJson(Map<String, dynamic> json) {
  return _WeeklyIncomeModel.fromJson(json);
}

/// @nodoc
mixin _$WeeklyIncomeModel {
  @JsonKey(name: "day")
  String get day => throw _privateConstructorUsedError;
  @JsonKey(name: "income_amount")
  int get incomeAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyIncomeModelCopyWith<WeeklyIncomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyIncomeModelCopyWith<$Res> {
  factory $WeeklyIncomeModelCopyWith(
          WeeklyIncomeModel value, $Res Function(WeeklyIncomeModel) then) =
      _$WeeklyIncomeModelCopyWithImpl<$Res, WeeklyIncomeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "day") String day,
      @JsonKey(name: "income_amount") int incomeAmount});
}

/// @nodoc
class _$WeeklyIncomeModelCopyWithImpl<$Res, $Val extends WeeklyIncomeModel>
    implements $WeeklyIncomeModelCopyWith<$Res> {
  _$WeeklyIncomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? incomeAmount = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      incomeAmount: null == incomeAmount
          ? _value.incomeAmount
          : incomeAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeeklyIncomeModelImplCopyWith<$Res>
    implements $WeeklyIncomeModelCopyWith<$Res> {
  factory _$$WeeklyIncomeModelImplCopyWith(_$WeeklyIncomeModelImpl value,
          $Res Function(_$WeeklyIncomeModelImpl) then) =
      __$$WeeklyIncomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "day") String day,
      @JsonKey(name: "income_amount") int incomeAmount});
}

/// @nodoc
class __$$WeeklyIncomeModelImplCopyWithImpl<$Res>
    extends _$WeeklyIncomeModelCopyWithImpl<$Res, _$WeeklyIncomeModelImpl>
    implements _$$WeeklyIncomeModelImplCopyWith<$Res> {
  __$$WeeklyIncomeModelImplCopyWithImpl(_$WeeklyIncomeModelImpl _value,
      $Res Function(_$WeeklyIncomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? incomeAmount = null,
  }) {
    return _then(_$WeeklyIncomeModelImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      incomeAmount: null == incomeAmount
          ? _value.incomeAmount
          : incomeAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyIncomeModelImpl implements _WeeklyIncomeModel {
  const _$WeeklyIncomeModelImpl(
      {@JsonKey(name: "day") this.day = '',
      @JsonKey(name: "income_amount") this.incomeAmount = 0});

  factory _$WeeklyIncomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyIncomeModelImplFromJson(json);

  @override
  @JsonKey(name: "day")
  final String day;
  @override
  @JsonKey(name: "income_amount")
  final int incomeAmount;

  @override
  String toString() {
    return 'WeeklyIncomeModel(day: $day, incomeAmount: $incomeAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyIncomeModelImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.incomeAmount, incomeAmount) ||
                other.incomeAmount == incomeAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, incomeAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyIncomeModelImplCopyWith<_$WeeklyIncomeModelImpl> get copyWith =>
      __$$WeeklyIncomeModelImplCopyWithImpl<_$WeeklyIncomeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyIncomeModelImplToJson(
      this,
    );
  }
}

abstract class _WeeklyIncomeModel implements WeeklyIncomeModel {
  const factory _WeeklyIncomeModel(
          {@JsonKey(name: "day") final String day,
          @JsonKey(name: "income_amount") final int incomeAmount}) =
      _$WeeklyIncomeModelImpl;

  factory _WeeklyIncomeModel.fromJson(Map<String, dynamic> json) =
      _$WeeklyIncomeModelImpl.fromJson;

  @override
  @JsonKey(name: "day")
  String get day;
  @override
  @JsonKey(name: "income_amount")
  int get incomeAmount;
  @override
  @JsonKey(ignore: true)
  _$$WeeklyIncomeModelImplCopyWith<_$WeeklyIncomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
