// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_find_one_history_booking_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseFindOneHistoryBookingDataModel
    _$ResponseFindOneHistoryBookingDataModelFromJson(
        Map<String, dynamic> json) {
  return _ResponseFindOneHistoryBookingDataModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseFindOneHistoryBookingDataModel {
  ResponseCourtBookingModel get courtBooking =>
      throw _privateConstructorUsedError;
  ResponseCourtAvailableModel get courtAvailable =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseFindOneHistoryBookingDataModelCopyWith<
          ResponseFindOneHistoryBookingDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseFindOneHistoryBookingDataModelCopyWith<$Res> {
  factory $ResponseFindOneHistoryBookingDataModelCopyWith(
          ResponseFindOneHistoryBookingDataModel value,
          $Res Function(ResponseFindOneHistoryBookingDataModel) then) =
      _$ResponseFindOneHistoryBookingDataModelCopyWithImpl<$Res,
          ResponseFindOneHistoryBookingDataModel>;
  @useResult
  $Res call(
      {ResponseCourtBookingModel courtBooking,
      ResponseCourtAvailableModel courtAvailable});

  $ResponseCourtBookingModelCopyWith<$Res> get courtBooking;
  $ResponseCourtAvailableModelCopyWith<$Res> get courtAvailable;
}

/// @nodoc
class _$ResponseFindOneHistoryBookingDataModelCopyWithImpl<$Res,
        $Val extends ResponseFindOneHistoryBookingDataModel>
    implements $ResponseFindOneHistoryBookingDataModelCopyWith<$Res> {
  _$ResponseFindOneHistoryBookingDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtBooking = null,
    Object? courtAvailable = null,
  }) {
    return _then(_value.copyWith(
      courtBooking: null == courtBooking
          ? _value.courtBooking
          : courtBooking // ignore: cast_nullable_to_non_nullable
              as ResponseCourtBookingModel,
      courtAvailable: null == courtAvailable
          ? _value.courtAvailable
          : courtAvailable // ignore: cast_nullable_to_non_nullable
              as ResponseCourtAvailableModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseCourtBookingModelCopyWith<$Res> get courtBooking {
    return $ResponseCourtBookingModelCopyWith<$Res>(_value.courtBooking,
        (value) {
      return _then(_value.copyWith(courtBooking: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseCourtAvailableModelCopyWith<$Res> get courtAvailable {
    return $ResponseCourtAvailableModelCopyWith<$Res>(_value.courtAvailable,
        (value) {
      return _then(_value.copyWith(courtAvailable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseFindOneHistoryBookingDataModelImplCopyWith<$Res>
    implements $ResponseFindOneHistoryBookingDataModelCopyWith<$Res> {
  factory _$$ResponseFindOneHistoryBookingDataModelImplCopyWith(
          _$ResponseFindOneHistoryBookingDataModelImpl value,
          $Res Function(_$ResponseFindOneHistoryBookingDataModelImpl) then) =
      __$$ResponseFindOneHistoryBookingDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseCourtBookingModel courtBooking,
      ResponseCourtAvailableModel courtAvailable});

  @override
  $ResponseCourtBookingModelCopyWith<$Res> get courtBooking;
  @override
  $ResponseCourtAvailableModelCopyWith<$Res> get courtAvailable;
}

/// @nodoc
class __$$ResponseFindOneHistoryBookingDataModelImplCopyWithImpl<$Res>
    extends _$ResponseFindOneHistoryBookingDataModelCopyWithImpl<$Res,
        _$ResponseFindOneHistoryBookingDataModelImpl>
    implements _$$ResponseFindOneHistoryBookingDataModelImplCopyWith<$Res> {
  __$$ResponseFindOneHistoryBookingDataModelImplCopyWithImpl(
      _$ResponseFindOneHistoryBookingDataModelImpl _value,
      $Res Function(_$ResponseFindOneHistoryBookingDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtBooking = null,
    Object? courtAvailable = null,
  }) {
    return _then(_$ResponseFindOneHistoryBookingDataModelImpl(
      courtBooking: null == courtBooking
          ? _value.courtBooking
          : courtBooking // ignore: cast_nullable_to_non_nullable
              as ResponseCourtBookingModel,
      courtAvailable: null == courtAvailable
          ? _value.courtAvailable
          : courtAvailable // ignore: cast_nullable_to_non_nullable
              as ResponseCourtAvailableModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseFindOneHistoryBookingDataModelImpl
    implements _ResponseFindOneHistoryBookingDataModel {
  const _$ResponseFindOneHistoryBookingDataModelImpl(
      {this.courtBooking = const ResponseCourtBookingModel(),
      this.courtAvailable = const ResponseCourtAvailableModel()});

  factory _$ResponseFindOneHistoryBookingDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseFindOneHistoryBookingDataModelImplFromJson(json);

  @override
  @JsonKey()
  final ResponseCourtBookingModel courtBooking;
  @override
  @JsonKey()
  final ResponseCourtAvailableModel courtAvailable;

  @override
  String toString() {
    return 'ResponseFindOneHistoryBookingDataModel(courtBooking: $courtBooking, courtAvailable: $courtAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseFindOneHistoryBookingDataModelImpl &&
            (identical(other.courtBooking, courtBooking) ||
                other.courtBooking == courtBooking) &&
            (identical(other.courtAvailable, courtAvailable) ||
                other.courtAvailable == courtAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, courtBooking, courtAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseFindOneHistoryBookingDataModelImplCopyWith<
          _$ResponseFindOneHistoryBookingDataModelImpl>
      get copyWith =>
          __$$ResponseFindOneHistoryBookingDataModelImplCopyWithImpl<
              _$ResponseFindOneHistoryBookingDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseFindOneHistoryBookingDataModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseFindOneHistoryBookingDataModel
    implements ResponseFindOneHistoryBookingDataModel {
  const factory _ResponseFindOneHistoryBookingDataModel(
          {final ResponseCourtBookingModel courtBooking,
          final ResponseCourtAvailableModel courtAvailable}) =
      _$ResponseFindOneHistoryBookingDataModelImpl;

  factory _ResponseFindOneHistoryBookingDataModel.fromJson(
          Map<String, dynamic> json) =
      _$ResponseFindOneHistoryBookingDataModelImpl.fromJson;

  @override
  ResponseCourtBookingModel get courtBooking;
  @override
  ResponseCourtAvailableModel get courtAvailable;
  @override
  @JsonKey(ignore: true)
  _$$ResponseFindOneHistoryBookingDataModelImplCopyWith<
          _$ResponseFindOneHistoryBookingDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
