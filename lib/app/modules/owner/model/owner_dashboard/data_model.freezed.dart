// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "weeklyIncome")
  List<WeeklyIncomeModel> get weeklyIncome =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "totalWeeklyIncome")
  int get totalWeeklyIncome => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "weeklyIncome") List<WeeklyIncomeModel> weeklyIncome,
      @JsonKey(name: "totalWeeklyIncome") int totalWeeklyIncome});
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res, $Val extends DataModel>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeklyIncome = null,
    Object? totalWeeklyIncome = null,
  }) {
    return _then(_value.copyWith(
      weeklyIncome: null == weeklyIncome
          ? _value.weeklyIncome
          : weeklyIncome // ignore: cast_nullable_to_non_nullable
              as List<WeeklyIncomeModel>,
      totalWeeklyIncome: null == totalWeeklyIncome
          ? _value.totalWeeklyIncome
          : totalWeeklyIncome // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataModelImplCopyWith<$Res>
    implements $DataModelCopyWith<$Res> {
  factory _$$DataModelImplCopyWith(
          _$DataModelImpl value, $Res Function(_$DataModelImpl) then) =
      __$$DataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "weeklyIncome") List<WeeklyIncomeModel> weeklyIncome,
      @JsonKey(name: "totalWeeklyIncome") int totalWeeklyIncome});
}

/// @nodoc
class __$$DataModelImplCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$DataModelImpl>
    implements _$$DataModelImplCopyWith<$Res> {
  __$$DataModelImplCopyWithImpl(
      _$DataModelImpl _value, $Res Function(_$DataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeklyIncome = null,
    Object? totalWeeklyIncome = null,
  }) {
    return _then(_$DataModelImpl(
      weeklyIncome: null == weeklyIncome
          ? _value._weeklyIncome
          : weeklyIncome // ignore: cast_nullable_to_non_nullable
              as List<WeeklyIncomeModel>,
      totalWeeklyIncome: null == totalWeeklyIncome
          ? _value.totalWeeklyIncome
          : totalWeeklyIncome // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "weeklyIncome")
      final List<WeeklyIncomeModel> weeklyIncome = const [],
      @JsonKey(name: "totalWeeklyIncome") this.totalWeeklyIncome = 0})
      : _weeklyIncome = weeklyIncome;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  final List<WeeklyIncomeModel> _weeklyIncome;
  @override
  @JsonKey(name: "weeklyIncome")
  List<WeeklyIncomeModel> get weeklyIncome {
    if (_weeklyIncome is EqualUnmodifiableListView) return _weeklyIncome;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeklyIncome);
  }

  @override
  @JsonKey(name: "totalWeeklyIncome")
  final int totalWeeklyIncome;

  @override
  String toString() {
    return 'DataModel(weeklyIncome: $weeklyIncome, totalWeeklyIncome: $totalWeeklyIncome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._weeklyIncome, _weeklyIncome) &&
            (identical(other.totalWeeklyIncome, totalWeeklyIncome) ||
                other.totalWeeklyIncome == totalWeeklyIncome));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_weeklyIncome), totalWeeklyIncome);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      __$$DataModelImplCopyWithImpl<_$DataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataModelImplToJson(
      this,
    );
  }
}

abstract class _DataModel implements DataModel {
  const factory _DataModel(
          {@JsonKey(name: "weeklyIncome")
          final List<WeeklyIncomeModel> weeklyIncome,
          @JsonKey(name: "totalWeeklyIncome") final int totalWeeklyIncome}) =
      _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "weeklyIncome")
  List<WeeklyIncomeModel> get weeklyIncome;
  @override
  @JsonKey(name: "totalWeeklyIncome")
  int get totalWeeklyIncome;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
