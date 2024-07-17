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
// @JsonKey(name: 'court_number') @Default('') String courtNumber,
// @JsonKey(name: 'booking_count') @Default(0) int bookingCount,
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "court_used")
  String get courtUsed => throw _privateConstructorUsedError;
  @JsonKey(name: "booking_count")
  int get bookingCount => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "court_used") String courtUsed,
      @JsonKey(name: "booking_count") int bookingCount,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt});
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
    Object? id = null,
    Object? courtUsed = null,
    Object? bookingCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courtUsed: null == courtUsed
          ? _value.courtUsed
          : courtUsed // ignore: cast_nullable_to_non_nullable
              as String,
      bookingCount: null == bookingCount
          ? _value.bookingCount
          : bookingCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "court_used") String courtUsed,
      @JsonKey(name: "booking_count") int bookingCount,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt});
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
    Object? id = null,
    Object? courtUsed = null,
    Object? bookingCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CourtUsageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courtUsed: null == courtUsed
          ? _value.courtUsed
          : courtUsed // ignore: cast_nullable_to_non_nullable
              as String,
      bookingCount: null == bookingCount
          ? _value.bookingCount
          : bookingCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourtUsageModelImpl implements _CourtUsageModel {
  const _$CourtUsageModelImpl(
      {@JsonKey(name: "id") this.id = '',
      @JsonKey(name: "court_used") this.courtUsed = '',
      @JsonKey(name: "booking_count") this.bookingCount = 0,
      @JsonKey(name: "created_at") this.createdAt = '',
      @JsonKey(name: "updated_at") this.updatedAt = ''});

  factory _$CourtUsageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourtUsageModelImplFromJson(json);

// @JsonKey(name: 'court_number') @Default('') String courtNumber,
// @JsonKey(name: 'booking_count') @Default(0) int bookingCount,
  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "court_used")
  final String courtUsed;
  @override
  @JsonKey(name: "booking_count")
  final int bookingCount;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String updatedAt;

  @override
  String toString() {
    return 'CourtUsageModel(id: $id, courtUsed: $courtUsed, bookingCount: $bookingCount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourtUsageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courtUsed, courtUsed) ||
                other.courtUsed == courtUsed) &&
            (identical(other.bookingCount, bookingCount) ||
                other.bookingCount == bookingCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, courtUsed, bookingCount, createdAt, updatedAt);

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
          {@JsonKey(name: "id") final String id,
          @JsonKey(name: "court_used") final String courtUsed,
          @JsonKey(name: "booking_count") final int bookingCount,
          @JsonKey(name: "created_at") final String createdAt,
          @JsonKey(name: "updated_at") final String updatedAt}) =
      _$CourtUsageModelImpl;

  factory _CourtUsageModel.fromJson(Map<String, dynamic> json) =
      _$CourtUsageModelImpl.fromJson;

  @override // @JsonKey(name: 'court_number') @Default('') String courtNumber,
// @JsonKey(name: 'booking_count') @Default(0) int bookingCount,
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "court_used")
  String get courtUsed;
  @override
  @JsonKey(name: "booking_count")
  int get bookingCount;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CourtUsageModelImplCopyWith<_$CourtUsageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
