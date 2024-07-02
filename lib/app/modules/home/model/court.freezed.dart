// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'court.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Court _$CourtFromJson(Map<String, dynamic> json) {
  return _Court.fromJson(json);
}

/// @nodoc
mixin _$Court {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourtCopyWith<Court> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourtCopyWith<$Res> {
  factory $CourtCopyWith(Court value, $Res Function(Court) then) =
      _$CourtCopyWithImpl<$Res, Court>;
  @useResult
  $Res call({String id, String name, int price, String imageUrl});
}

/// @nodoc
class _$CourtCopyWithImpl<$Res, $Val extends Court>
    implements $CourtCopyWith<$Res> {
  _$CourtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourtImplCopyWith<$Res> implements $CourtCopyWith<$Res> {
  factory _$$CourtImplCopyWith(
          _$CourtImpl value, $Res Function(_$CourtImpl) then) =
      __$$CourtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int price, String imageUrl});
}

/// @nodoc
class __$$CourtImplCopyWithImpl<$Res>
    extends _$CourtCopyWithImpl<$Res, _$CourtImpl>
    implements _$$CourtImplCopyWith<$Res> {
  __$$CourtImplCopyWithImpl(
      _$CourtImpl _value, $Res Function(_$CourtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? imageUrl = null,
  }) {
    return _then(_$CourtImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourtImpl implements _Court {
  const _$CourtImpl(
      {this.id = "", this.name = "", this.price = 0, this.imageUrl = ""});

  factory _$CourtImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourtImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int price;
  @override
  @JsonKey()
  final String imageUrl;

  @override
  String toString() {
    return 'Court(id: $id, name: $name, price: $price, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourtImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourtImplCopyWith<_$CourtImpl> get copyWith =>
      __$$CourtImplCopyWithImpl<_$CourtImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourtImplToJson(
      this,
    );
  }
}

abstract class _Court implements Court {
  const factory _Court(
      {final String id,
      final String name,
      final int price,
      final String imageUrl}) = _$CourtImpl;

  factory _Court.fromJson(Map<String, dynamic> json) = _$CourtImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get price;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CourtImplCopyWith<_$CourtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
