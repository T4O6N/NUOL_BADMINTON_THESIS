// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'param_create_admin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParamCreateAdminModel _$ParamCreateAdminModelFromJson(
    Map<String, dynamic> json) {
  return _ParamCreateAdminModel.fromJson(json);
}

/// @nodoc
mixin _$ParamCreateAdminModel {
  String get username => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParamCreateAdminModelCopyWith<ParamCreateAdminModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamCreateAdminModelCopyWith<$Res> {
  factory $ParamCreateAdminModelCopyWith(ParamCreateAdminModel value,
          $Res Function(ParamCreateAdminModel) then) =
      _$ParamCreateAdminModelCopyWithImpl<$Res, ParamCreateAdminModel>;
  @useResult
  $Res call({String username, String phone, String password});
}

/// @nodoc
class _$ParamCreateAdminModelCopyWithImpl<$Res,
        $Val extends ParamCreateAdminModel>
    implements $ParamCreateAdminModelCopyWith<$Res> {
  _$ParamCreateAdminModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ParamCreateAdminModelImplCopyWith<$Res>
    implements $ParamCreateAdminModelCopyWith<$Res> {
  factory _$$ParamCreateAdminModelImplCopyWith(
          _$ParamCreateAdminModelImpl value,
          $Res Function(_$ParamCreateAdminModelImpl) then) =
      __$$ParamCreateAdminModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String phone, String password});
}

/// @nodoc
class __$$ParamCreateAdminModelImplCopyWithImpl<$Res>
    extends _$ParamCreateAdminModelCopyWithImpl<$Res,
        _$ParamCreateAdminModelImpl>
    implements _$$ParamCreateAdminModelImplCopyWith<$Res> {
  __$$ParamCreateAdminModelImplCopyWithImpl(_$ParamCreateAdminModelImpl _value,
      $Res Function(_$ParamCreateAdminModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_$ParamCreateAdminModelImpl(
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
class _$ParamCreateAdminModelImpl implements _ParamCreateAdminModel {
  const _$ParamCreateAdminModelImpl(
      {this.username = '', this.phone = '', this.password = ''});

  factory _$ParamCreateAdminModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParamCreateAdminModelImplFromJson(json);

  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'ParamCreateAdminModel(username: $username, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParamCreateAdminModelImpl &&
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
  _$$ParamCreateAdminModelImplCopyWith<_$ParamCreateAdminModelImpl>
      get copyWith => __$$ParamCreateAdminModelImplCopyWithImpl<
          _$ParamCreateAdminModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParamCreateAdminModelImplToJson(
      this,
    );
  }
}

abstract class _ParamCreateAdminModel implements ParamCreateAdminModel {
  const factory _ParamCreateAdminModel(
      {final String username,
      final String phone,
      final String password}) = _$ParamCreateAdminModelImpl;

  factory _ParamCreateAdminModel.fromJson(Map<String, dynamic> json) =
      _$ParamCreateAdminModelImpl.fromJson;

  @override
  String get username;
  @override
  String get phone;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ParamCreateAdminModelImplCopyWith<_$ParamCreateAdminModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
