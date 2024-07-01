// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceInfoModel _$DeviceInfoModelFromJson(Map<String, dynamic> json) {
  return _DeviceInfoModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceInfoModel {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceInfoModelCopyWith<DeviceInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoModelCopyWith<$Res> {
  factory $DeviceInfoModelCopyWith(
          DeviceInfoModel value, $Res Function(DeviceInfoModel) then) =
      _$DeviceInfoModelCopyWithImpl<$Res, DeviceInfoModel>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$DeviceInfoModelCopyWithImpl<$Res, $Val extends DeviceInfoModel>
    implements $DeviceInfoModelCopyWith<$Res> {
  _$DeviceInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceInfoModelImplCopyWith<$Res>
    implements $DeviceInfoModelCopyWith<$Res> {
  factory _$$DeviceInfoModelImplCopyWith(_$DeviceInfoModelImpl value,
          $Res Function(_$DeviceInfoModelImpl) then) =
      __$$DeviceInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeviceInfoModelImplCopyWithImpl<$Res>
    extends _$DeviceInfoModelCopyWithImpl<$Res, _$DeviceInfoModelImpl>
    implements _$$DeviceInfoModelImplCopyWith<$Res> {
  __$$DeviceInfoModelImplCopyWithImpl(
      _$DeviceInfoModelImpl _value, $Res Function(_$DeviceInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeviceInfoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceInfoModelImpl implements _DeviceInfoModel {
  const _$DeviceInfoModelImpl({this.id = ''});

  factory _$DeviceInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceInfoModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;

  @override
  String toString() {
    return 'DeviceInfoModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoModelImplCopyWith<_$DeviceInfoModelImpl> get copyWith =>
      __$$DeviceInfoModelImplCopyWithImpl<_$DeviceInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceInfoModelImplToJson(
      this,
    );
  }
}

abstract class _DeviceInfoModel implements DeviceInfoModel {
  const factory _DeviceInfoModel({final String id}) = _$DeviceInfoModelImpl;

  factory _DeviceInfoModel.fromJson(Map<String, dynamic> json) =
      _$DeviceInfoModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$DeviceInfoModelImplCopyWith<_$DeviceInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
