// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_court_available_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCourtAvailableModel _$ResponseCourtAvailableModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseCourtAvailableModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseCourtAvailableModel {
  int get totalAllCourtAvailable => throw _privateConstructorUsedError;
  bool get isExpiredAll => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  int get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'listOfCourtAvailable')
  List<ResponseBookingDataCourtAvailableModel> get listOfCourtAvailable =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCourtAvailableModelCopyWith<ResponseCourtAvailableModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCourtAvailableModelCopyWith<$Res> {
  factory $ResponseCourtAvailableModelCopyWith(
          ResponseCourtAvailableModel value,
          $Res Function(ResponseCourtAvailableModel) then) =
      _$ResponseCourtAvailableModelCopyWithImpl<$Res,
          ResponseCourtAvailableModel>;
  @useResult
  $Res call(
      {int totalAllCourtAvailable,
      bool isExpiredAll,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'listOfCourtAvailable')
      List<ResponseBookingDataCourtAvailableModel> listOfCourtAvailable});
}

/// @nodoc
class _$ResponseCourtAvailableModelCopyWithImpl<$Res,
        $Val extends ResponseCourtAvailableModel>
    implements $ResponseCourtAvailableModelCopyWith<$Res> {
  _$ResponseCourtAvailableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAllCourtAvailable = null,
    Object? isExpiredAll = null,
    Object? totalAmount = null,
    Object? listOfCourtAvailable = null,
  }) {
    return _then(_value.copyWith(
      totalAllCourtAvailable: null == totalAllCourtAvailable
          ? _value.totalAllCourtAvailable
          : totalAllCourtAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      isExpiredAll: null == isExpiredAll
          ? _value.isExpiredAll
          : isExpiredAll // ignore: cast_nullable_to_non_nullable
              as bool,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      listOfCourtAvailable: null == listOfCourtAvailable
          ? _value.listOfCourtAvailable
          : listOfCourtAvailable // ignore: cast_nullable_to_non_nullable
              as List<ResponseBookingDataCourtAvailableModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseCourtAvailableModelImplCopyWith<$Res>
    implements $ResponseCourtAvailableModelCopyWith<$Res> {
  factory _$$ResponseCourtAvailableModelImplCopyWith(
          _$ResponseCourtAvailableModelImpl value,
          $Res Function(_$ResponseCourtAvailableModelImpl) then) =
      __$$ResponseCourtAvailableModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalAllCourtAvailable,
      bool isExpiredAll,
      @JsonKey(name: 'total_amount') int totalAmount,
      @JsonKey(name: 'listOfCourtAvailable')
      List<ResponseBookingDataCourtAvailableModel> listOfCourtAvailable});
}

/// @nodoc
class __$$ResponseCourtAvailableModelImplCopyWithImpl<$Res>
    extends _$ResponseCourtAvailableModelCopyWithImpl<$Res,
        _$ResponseCourtAvailableModelImpl>
    implements _$$ResponseCourtAvailableModelImplCopyWith<$Res> {
  __$$ResponseCourtAvailableModelImplCopyWithImpl(
      _$ResponseCourtAvailableModelImpl _value,
      $Res Function(_$ResponseCourtAvailableModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAllCourtAvailable = null,
    Object? isExpiredAll = null,
    Object? totalAmount = null,
    Object? listOfCourtAvailable = null,
  }) {
    return _then(_$ResponseCourtAvailableModelImpl(
      totalAllCourtAvailable: null == totalAllCourtAvailable
          ? _value.totalAllCourtAvailable
          : totalAllCourtAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      isExpiredAll: null == isExpiredAll
          ? _value.isExpiredAll
          : isExpiredAll // ignore: cast_nullable_to_non_nullable
              as bool,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      listOfCourtAvailable: null == listOfCourtAvailable
          ? _value._listOfCourtAvailable
          : listOfCourtAvailable // ignore: cast_nullable_to_non_nullable
              as List<ResponseBookingDataCourtAvailableModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCourtAvailableModelImpl
    implements _ResponseCourtAvailableModel {
  const _$ResponseCourtAvailableModelImpl(
      {this.totalAllCourtAvailable = 0,
      this.isExpiredAll = false,
      @JsonKey(name: 'total_amount') this.totalAmount = 0,
      @JsonKey(name: 'listOfCourtAvailable')
      final List<ResponseBookingDataCourtAvailableModel> listOfCourtAvailable =
          const []})
      : _listOfCourtAvailable = listOfCourtAvailable;

  factory _$ResponseCourtAvailableModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseCourtAvailableModelImplFromJson(json);

  @override
  @JsonKey()
  final int totalAllCourtAvailable;
  @override
  @JsonKey()
  final bool isExpiredAll;
  @override
  @JsonKey(name: 'total_amount')
  final int totalAmount;
  final List<ResponseBookingDataCourtAvailableModel> _listOfCourtAvailable;
  @override
  @JsonKey(name: 'listOfCourtAvailable')
  List<ResponseBookingDataCourtAvailableModel> get listOfCourtAvailable {
    if (_listOfCourtAvailable is EqualUnmodifiableListView)
      return _listOfCourtAvailable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfCourtAvailable);
  }

  @override
  String toString() {
    return 'ResponseCourtAvailableModel(totalAllCourtAvailable: $totalAllCourtAvailable, isExpiredAll: $isExpiredAll, totalAmount: $totalAmount, listOfCourtAvailable: $listOfCourtAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCourtAvailableModelImpl &&
            (identical(other.totalAllCourtAvailable, totalAllCourtAvailable) ||
                other.totalAllCourtAvailable == totalAllCourtAvailable) &&
            (identical(other.isExpiredAll, isExpiredAll) ||
                other.isExpiredAll == isExpiredAll) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            const DeepCollectionEquality()
                .equals(other._listOfCourtAvailable, _listOfCourtAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalAllCourtAvailable,
      isExpiredAll,
      totalAmount,
      const DeepCollectionEquality().hash(_listOfCourtAvailable));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCourtAvailableModelImplCopyWith<_$ResponseCourtAvailableModelImpl>
      get copyWith => __$$ResponseCourtAvailableModelImplCopyWithImpl<
          _$ResponseCourtAvailableModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCourtAvailableModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseCourtAvailableModel
    implements ResponseCourtAvailableModel {
  const factory _ResponseCourtAvailableModel(
      {final int totalAllCourtAvailable,
      final bool isExpiredAll,
      @JsonKey(name: 'total_amount') final int totalAmount,
      @JsonKey(name: 'listOfCourtAvailable')
      final List<ResponseBookingDataCourtAvailableModel>
          listOfCourtAvailable}) = _$ResponseCourtAvailableModelImpl;

  factory _ResponseCourtAvailableModel.fromJson(Map<String, dynamic> json) =
      _$ResponseCourtAvailableModelImpl.fromJson;

  @override
  int get totalAllCourtAvailable;
  @override
  bool get isExpiredAll;
  @override
  @JsonKey(name: 'total_amount')
  int get totalAmount;
  @override
  @JsonKey(name: 'listOfCourtAvailable')
  List<ResponseBookingDataCourtAvailableModel> get listOfCourtAvailable;
  @override
  @JsonKey(ignore: true)
  _$$ResponseCourtAvailableModelImplCopyWith<_$ResponseCourtAvailableModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
