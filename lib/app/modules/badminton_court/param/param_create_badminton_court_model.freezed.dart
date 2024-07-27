// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'param_create_badminton_court_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParamCreateBadmintonCourtModel _$ParamCreateBadmintonCourtModelFromJson(
    Map<String, dynamic> json) {
  return _ParamCreateBadmintonCourtModel.fromJson(json);
}

/// @nodoc
mixin _$ParamCreateBadmintonCourtModel {
  @JsonKey(name: "court_number")
  String get courtNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "court_image")
  String get courtImage => throw _privateConstructorUsedError;
  @JsonKey(name: "available")
  bool get available => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParamCreateBadmintonCourtModelCopyWith<ParamCreateBadmintonCourtModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamCreateBadmintonCourtModelCopyWith<$Res> {
  factory $ParamCreateBadmintonCourtModelCopyWith(
          ParamCreateBadmintonCourtModel value,
          $Res Function(ParamCreateBadmintonCourtModel) then) =
      _$ParamCreateBadmintonCourtModelCopyWithImpl<$Res,
          ParamCreateBadmintonCourtModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "court_number") String courtNumber,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "court_image") String courtImage,
      @JsonKey(name: "available") bool available});
}

/// @nodoc
class _$ParamCreateBadmintonCourtModelCopyWithImpl<$Res,
        $Val extends ParamCreateBadmintonCourtModel>
    implements $ParamCreateBadmintonCourtModelCopyWith<$Res> {
  _$ParamCreateBadmintonCourtModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtNumber = null,
    Object? description = null,
    Object? courtImage = null,
    Object? available = null,
  }) {
    return _then(_value.copyWith(
      courtNumber: null == courtNumber
          ? _value.courtNumber
          : courtNumber // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      courtImage: null == courtImage
          ? _value.courtImage
          : courtImage // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParamCreateBadmintonCourtModelImplCopyWith<$Res>
    implements $ParamCreateBadmintonCourtModelCopyWith<$Res> {
  factory _$$ParamCreateBadmintonCourtModelImplCopyWith(
          _$ParamCreateBadmintonCourtModelImpl value,
          $Res Function(_$ParamCreateBadmintonCourtModelImpl) then) =
      __$$ParamCreateBadmintonCourtModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "court_number") String courtNumber,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "court_image") String courtImage,
      @JsonKey(name: "available") bool available});
}

/// @nodoc
class __$$ParamCreateBadmintonCourtModelImplCopyWithImpl<$Res>
    extends _$ParamCreateBadmintonCourtModelCopyWithImpl<$Res,
        _$ParamCreateBadmintonCourtModelImpl>
    implements _$$ParamCreateBadmintonCourtModelImplCopyWith<$Res> {
  __$$ParamCreateBadmintonCourtModelImplCopyWithImpl(
      _$ParamCreateBadmintonCourtModelImpl _value,
      $Res Function(_$ParamCreateBadmintonCourtModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtNumber = null,
    Object? description = null,
    Object? courtImage = null,
    Object? available = null,
  }) {
    return _then(_$ParamCreateBadmintonCourtModelImpl(
      courtNumber: null == courtNumber
          ? _value.courtNumber
          : courtNumber // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      courtImage: null == courtImage
          ? _value.courtImage
          : courtImage // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParamCreateBadmintonCourtModelImpl
    implements _ParamCreateBadmintonCourtModel {
  const _$ParamCreateBadmintonCourtModelImpl(
      {@JsonKey(name: "court_number") this.courtNumber = "",
      @JsonKey(name: "description") this.description = "",
      @JsonKey(name: "court_image") this.courtImage = "",
      @JsonKey(name: "available") this.available = true});

  factory _$ParamCreateBadmintonCourtModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ParamCreateBadmintonCourtModelImplFromJson(json);

  @override
  @JsonKey(name: "court_number")
  final String courtNumber;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "court_image")
  final String courtImage;
  @override
  @JsonKey(name: "available")
  final bool available;

  @override
  String toString() {
    return 'ParamCreateBadmintonCourtModel(courtNumber: $courtNumber, description: $description, courtImage: $courtImage, available: $available)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParamCreateBadmintonCourtModelImpl &&
            (identical(other.courtNumber, courtNumber) ||
                other.courtNumber == courtNumber) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.courtImage, courtImage) ||
                other.courtImage == courtImage) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, courtNumber, description, courtImage, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParamCreateBadmintonCourtModelImplCopyWith<
          _$ParamCreateBadmintonCourtModelImpl>
      get copyWith => __$$ParamCreateBadmintonCourtModelImplCopyWithImpl<
          _$ParamCreateBadmintonCourtModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParamCreateBadmintonCourtModelImplToJson(
      this,
    );
  }
}

abstract class _ParamCreateBadmintonCourtModel
    implements ParamCreateBadmintonCourtModel {
  const factory _ParamCreateBadmintonCourtModel(
          {@JsonKey(name: "court_number") final String courtNumber,
          @JsonKey(name: "description") final String description,
          @JsonKey(name: "court_image") final String courtImage,
          @JsonKey(name: "available") final bool available}) =
      _$ParamCreateBadmintonCourtModelImpl;

  factory _ParamCreateBadmintonCourtModel.fromJson(Map<String, dynamic> json) =
      _$ParamCreateBadmintonCourtModelImpl.fromJson;

  @override
  @JsonKey(name: "court_number")
  String get courtNumber;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "court_image")
  String get courtImage;
  @override
  @JsonKey(name: "available")
  bool get available;
  @override
  @JsonKey(ignore: true)
  _$$ParamCreateBadmintonCourtModelImplCopyWith<
          _$ParamCreateBadmintonCourtModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
