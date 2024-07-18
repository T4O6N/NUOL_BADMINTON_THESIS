// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'param_create_promotion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParamCreatePromotionModel _$ParamCreatePromotionModelFromJson(
    Map<String, dynamic> json) {
  return _ParamCreatePromotionModel.fromJson(json);
}

/// @nodoc
mixin _$ParamCreatePromotionModel {
  String get title => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParamCreatePromotionModelCopyWith<ParamCreatePromotionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamCreatePromotionModelCopyWith<$Res> {
  factory $ParamCreatePromotionModelCopyWith(ParamCreatePromotionModel value,
          $Res Function(ParamCreatePromotionModel) then) =
      _$ParamCreatePromotionModelCopyWithImpl<$Res, ParamCreatePromotionModel>;
  @useResult
  $Res call({String title, int discount});
}

/// @nodoc
class _$ParamCreatePromotionModelCopyWithImpl<$Res,
        $Val extends ParamCreatePromotionModel>
    implements $ParamCreatePromotionModelCopyWith<$Res> {
  _$ParamCreatePromotionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? discount = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$ParamCreatePromotionModelImplCopyWith<$Res>
    implements $ParamCreatePromotionModelCopyWith<$Res> {
  factory _$$ParamCreatePromotionModelImplCopyWith(
          _$ParamCreatePromotionModelImpl value,
          $Res Function(_$ParamCreatePromotionModelImpl) then) =
      __$$ParamCreatePromotionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int discount});
}

/// @nodoc
class __$$ParamCreatePromotionModelImplCopyWithImpl<$Res>
    extends _$ParamCreatePromotionModelCopyWithImpl<$Res,
        _$ParamCreatePromotionModelImpl>
    implements _$$ParamCreatePromotionModelImplCopyWith<$Res> {
  __$$ParamCreatePromotionModelImplCopyWithImpl(
      _$ParamCreatePromotionModelImpl _value,
      $Res Function(_$ParamCreatePromotionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? discount = null,
  }) {
    return _then(_$ParamCreatePromotionModelImpl(
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
class _$ParamCreatePromotionModelImpl implements _ParamCreatePromotionModel {
  const _$ParamCreatePromotionModelImpl({this.title = '', this.discount = 0});

  factory _$ParamCreatePromotionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParamCreatePromotionModelImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int discount;

  @override
  String toString() {
    return 'ParamCreatePromotionModel(title: $title, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParamCreatePromotionModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParamCreatePromotionModelImplCopyWith<_$ParamCreatePromotionModelImpl>
      get copyWith => __$$ParamCreatePromotionModelImplCopyWithImpl<
          _$ParamCreatePromotionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParamCreatePromotionModelImplToJson(
      this,
    );
  }
}

abstract class _ParamCreatePromotionModel implements ParamCreatePromotionModel {
  const factory _ParamCreatePromotionModel(
      {final String title,
      final int discount}) = _$ParamCreatePromotionModelImpl;

  factory _ParamCreatePromotionModel.fromJson(Map<String, dynamic> json) =
      _$ParamCreatePromotionModelImpl.fromJson;

  @override
  String get title;
  @override
  int get discount;
  @override
  @JsonKey(ignore: true)
  _$$ParamCreatePromotionModelImplCopyWith<_$ParamCreatePromotionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
