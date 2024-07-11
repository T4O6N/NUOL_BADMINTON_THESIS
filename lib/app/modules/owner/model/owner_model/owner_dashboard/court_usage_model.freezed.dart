// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'court_usage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourtUsageModel _$CourtUsageModelFromJson(Map<String, dynamic> json) {
  return _CourtUsageModel.fromJson(json);
}

/// @nodoc
mixin _$CourtUsageModel {
  @JsonKey(name: 'court_number')
  String get courtNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_count')
  int get bookingCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourtUsageModelCopyWith<CourtUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourtUsageModelCopyWith<$Res> {
  factory $CourtUsageModelCopyWith(
          CourtUsageModel value, $Res Function(CourtUsageModel) then) =
      _$CourtUsageModelCopyWithImpl<$Res, CourtUsageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'court_number') String courtNumber,
      @JsonKey(name: 'booking_count') int bookingCount});
}

/// @nodoc
class _$CourtUsageModelCopyWithImpl<$Res, $Val extends CourtUsageModel>
    implements $CourtUsageModelCopyWith<$Res> {
  _$CourtUsageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtNumber = null,
    Object? bookingCount = null,
  }) {
    return _then(_value.copyWith(
      courtNumber: null == courtNumber
          ? _value.courtNumber
          : courtNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bookingCount: null == bookingCount
          ? _value.bookingCount
          : bookingCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourtUsageModelImplCopyWith<$Res>
    implements $CourtUsageModelCopyWith<$Res> {
  factory _$$CourtUsageModelImplCopyWith(_$CourtUsageModelImpl value,
          $Res Function(_$CourtUsageModelImpl) then) =
      __$$CourtUsageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'court_number') String courtNumber,
      @JsonKey(name: 'booking_count') int bookingCount});
}

/// @nodoc
class __$$CourtUsageModelImplCopyWithImpl<$Res>
    extends _$CourtUsageModelCopyWithImpl<$Res, _$CourtUsageModelImpl>
    implements _$$CourtUsageModelImplCopyWith<$Res> {
  __$$CourtUsageModelImplCopyWithImpl(
      _$CourtUsageModelImpl _value, $Res Function(_$CourtUsageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtNumber = null,
    Object? bookingCount = null,
  }) {
    return _then(_$CourtUsageModelImpl(
      courtNumber: null == courtNumber
          ? _value.courtNumber
          : courtNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bookingCount: null == bookingCount
          ? _value.bookingCount
          : bookingCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourtUsageModelImpl implements _CourtUsageModel {
  const _$CourtUsageModelImpl(
      {@JsonKey(name: 'court_number') this.courtNumber = '',
      @JsonKey(name: 'booking_count') this.bookingCount = 0});

  factory _$CourtUsageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourtUsageModelImplFromJson(json);

  @override
  @JsonKey(name: 'court_number')
  final String courtNumber;
  @override
  @JsonKey(name: 'booking_count')
  final int bookingCount;

  @override
  String toString() {
    return 'CourtUsageModel(courtNumber: $courtNumber, bookingCount: $bookingCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourtUsageModelImpl &&
            (identical(other.courtNumber, courtNumber) ||
                other.courtNumber == courtNumber) &&
            (identical(other.bookingCount, bookingCount) ||
                other.bookingCount == bookingCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, courtNumber, bookingCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourtUsageModelImplCopyWith<_$CourtUsageModelImpl> get copyWith =>
      __$$CourtUsageModelImplCopyWithImpl<_$CourtUsageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourtUsageModelImplToJson(
      this,
    );
  }
}

abstract class _CourtUsageModel implements CourtUsageModel {
  const factory _CourtUsageModel(
          {@JsonKey(name: 'court_number') final String courtNumber,
          @JsonKey(name: 'booking_count') final int bookingCount}) =
      _$CourtUsageModelImpl;

  factory _CourtUsageModel.fromJson(Map<String, dynamic> json) =
      _$CourtUsageModelImpl.fromJson;

  @override
  @JsonKey(name: 'court_number')
  String get courtNumber;
  @override
  @JsonKey(name: 'booking_count')
  int get bookingCount;
  @override
  @JsonKey(ignore: true)
  _$$CourtUsageModelImplCopyWith<_$CourtUsageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
