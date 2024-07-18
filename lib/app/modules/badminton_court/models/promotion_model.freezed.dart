// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionModel _$PromotionModelFromJson(Map<String, dynamic> json) {
  return _PromotionModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionModel {
  String get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionModelCopyWith<PromotionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionModelCopyWith<$Res> {
  factory $PromotionModelCopyWith(
          PromotionModel value, $Res Function(PromotionModel) then) =
      _$PromotionModelCopyWithImpl<$Res, PromotionModel>;
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updatedAt,
      String title,
      int discount});
}

/// @nodoc
class _$PromotionModelCopyWithImpl<$Res, $Val extends PromotionModel>
    implements $PromotionModelCopyWith<$Res> {
  _$PromotionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? title = null,
    Object? discount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionModelImplCopyWith<$Res>
    implements $PromotionModelCopyWith<$Res> {
  factory _$$PromotionModelImplCopyWith(_$PromotionModelImpl value,
          $Res Function(_$PromotionModelImpl) then) =
      __$$PromotionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdAt,
      String updatedAt,
      String title,
      int discount});
}

/// @nodoc
class __$$PromotionModelImplCopyWithImpl<$Res>
    extends _$PromotionModelCopyWithImpl<$Res, _$PromotionModelImpl>
    implements _$$PromotionModelImplCopyWith<$Res> {
  __$$PromotionModelImplCopyWithImpl(
      _$PromotionModelImpl _value, $Res Function(_$PromotionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? title = null,
    Object? discount = null,
  }) {
    return _then(_$PromotionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionModelImpl implements _PromotionModel {
  const _$PromotionModelImpl(
      {this.id = '',
      this.createdAt = '',
      this.updatedAt = '',
      this.title = '',
      this.discount = 0});

  factory _$PromotionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int discount;

  @override
  String toString() {
    return 'PromotionModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, title: $title, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, updatedAt, title, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionModelImplCopyWith<_$PromotionModelImpl> get copyWith =>
      __$$PromotionModelImplCopyWithImpl<_$PromotionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionModelImplToJson(
      this,
    );
  }
}

abstract class _PromotionModel implements PromotionModel {
  const factory _PromotionModel(
      {final String id,
      final String createdAt,
      final String updatedAt,
      final String title,
      final int discount}) = _$PromotionModelImpl;

  factory _PromotionModel.fromJson(Map<String, dynamic> json) =
      _$PromotionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get title;
  @override
  int get discount;
  @override
  @JsonKey(ignore: true)
  _$$PromotionModelImplCopyWith<_$PromotionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
