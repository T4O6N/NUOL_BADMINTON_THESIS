// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'param_create_owner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParamCreateOwnerModel _$ParamCreateOwnerModelFromJson(
    Map<String, dynamic> json) {
  return _ParamCreateOwnerModel.fromJson(json);
}

/// @nodoc
mixin _$ParamCreateOwnerModel {
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParamCreateOwnerModelCopyWith<ParamCreateOwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamCreateOwnerModelCopyWith<$Res> {
  factory $ParamCreateOwnerModelCopyWith(ParamCreateOwnerModel value,
          $Res Function(ParamCreateOwnerModel) then) =
      _$ParamCreateOwnerModelCopyWithImpl<$Res, ParamCreateOwnerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "username") String username,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class _$ParamCreateOwnerModelCopyWithImpl<$Res,
        $Val extends ParamCreateOwnerModel>
    implements $ParamCreateOwnerModelCopyWith<$Res> {
  _$ParamCreateOwnerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParamCreateOwnerModelImplCopyWith<$Res>
    implements $ParamCreateOwnerModelCopyWith<$Res> {
  factory _$$ParamCreateOwnerModelImplCopyWith(
          _$ParamCreateOwnerModelImpl value,
          $Res Function(_$ParamCreateOwnerModelImpl) then) =
      __$$ParamCreateOwnerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username") String username,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class __$$ParamCreateOwnerModelImplCopyWithImpl<$Res>
    extends _$ParamCreateOwnerModelCopyWithImpl<$Res,
        _$ParamCreateOwnerModelImpl>
    implements _$$ParamCreateOwnerModelImplCopyWith<$Res> {
  __$$ParamCreateOwnerModelImplCopyWithImpl(_$ParamCreateOwnerModelImpl _value,
      $Res Function(_$ParamCreateOwnerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_$ParamCreateOwnerModelImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParamCreateOwnerModelImpl implements _ParamCreateOwnerModel {
  const _$ParamCreateOwnerModelImpl(
      {@JsonKey(name: "username") this.username = "",
      @JsonKey(name: "phone") this.phone = "",
      @JsonKey(name: "password") this.password = ""});

  factory _$ParamCreateOwnerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParamCreateOwnerModelImplFromJson(json);

  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "password")
  final String password;

  @override
  String toString() {
    return 'ParamCreateOwnerModel(username: $username, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParamCreateOwnerModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, phone, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParamCreateOwnerModelImplCopyWith<_$ParamCreateOwnerModelImpl>
      get copyWith => __$$ParamCreateOwnerModelImplCopyWithImpl<
          _$ParamCreateOwnerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParamCreateOwnerModelImplToJson(
      this,
    );
  }
}

abstract class _ParamCreateOwnerModel implements ParamCreateOwnerModel {
  const factory _ParamCreateOwnerModel(
          {@JsonKey(name: "username") final String username,
          @JsonKey(name: "phone") final String phone,
          @JsonKey(name: "password") final String password}) =
      _$ParamCreateOwnerModelImpl;

  factory _ParamCreateOwnerModel.fromJson(Map<String, dynamic> json) =
      _$ParamCreateOwnerModelImpl.fromJson;

  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "password")
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ParamCreateOwnerModelImplCopyWith<_$ParamCreateOwnerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
