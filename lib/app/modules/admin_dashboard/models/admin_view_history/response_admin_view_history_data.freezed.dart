// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_admin_view_history_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseAdminViewHistoryData _$ResponseAdminViewHistoryDataFromJson(
    Map<String, dynamic> json) {
  return _ResponseAdminViewHistoryData.fromJson(json);
}

/// @nodoc
mixin _$ResponseAdminViewHistoryData {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'courtBookingPaymentHistory')
  List<ResponseAdminViewHistoryCourtBookingPaymentHistory>
      get courtBookingPaymentHistory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseAdminViewHistoryDataCopyWith<ResponseAdminViewHistoryData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseAdminViewHistoryDataCopyWith<$Res> {
  factory $ResponseAdminViewHistoryDataCopyWith(
          ResponseAdminViewHistoryData value,
          $Res Function(ResponseAdminViewHistoryData) then) =
      _$ResponseAdminViewHistoryDataCopyWithImpl<$Res,
          ResponseAdminViewHistoryData>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'is_active') bool isActive,
      String username,
      String phone,
      String password,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'courtBookingPaymentHistory')
      List<ResponseAdminViewHistoryCourtBookingPaymentHistory>
          courtBookingPaymentHistory});
}

/// @nodoc
class _$ResponseAdminViewHistoryDataCopyWithImpl<$Res,
        $Val extends ResponseAdminViewHistoryData>
    implements $ResponseAdminViewHistoryDataCopyWith<$Res> {
  _$ResponseAdminViewHistoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isActive = null,
    Object? username = null,
    Object? phone = null,
    Object? password = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? courtBookingPaymentHistory = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      courtBookingPaymentHistory: null == courtBookingPaymentHistory
          ? _value.courtBookingPaymentHistory
          : courtBookingPaymentHistory // ignore: cast_nullable_to_non_nullable
              as List<ResponseAdminViewHistoryCourtBookingPaymentHistory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseAdminViewHistoryDataImplCopyWith<$Res>
    implements $ResponseAdminViewHistoryDataCopyWith<$Res> {
  factory _$$ResponseAdminViewHistoryDataImplCopyWith(
          _$ResponseAdminViewHistoryDataImpl value,
          $Res Function(_$ResponseAdminViewHistoryDataImpl) then) =
      __$$ResponseAdminViewHistoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'is_active') bool isActive,
      String username,
      String phone,
      String password,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'courtBookingPaymentHistory')
      List<ResponseAdminViewHistoryCourtBookingPaymentHistory>
          courtBookingPaymentHistory});
}

/// @nodoc
class __$$ResponseAdminViewHistoryDataImplCopyWithImpl<$Res>
    extends _$ResponseAdminViewHistoryDataCopyWithImpl<$Res,
        _$ResponseAdminViewHistoryDataImpl>
    implements _$$ResponseAdminViewHistoryDataImplCopyWith<$Res> {
  __$$ResponseAdminViewHistoryDataImplCopyWithImpl(
      _$ResponseAdminViewHistoryDataImpl _value,
      $Res Function(_$ResponseAdminViewHistoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isActive = null,
    Object? username = null,
    Object? phone = null,
    Object? password = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? courtBookingPaymentHistory = null,
  }) {
    return _then(_$ResponseAdminViewHistoryDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      courtBookingPaymentHistory: null == courtBookingPaymentHistory
          ? _value._courtBookingPaymentHistory
          : courtBookingPaymentHistory // ignore: cast_nullable_to_non_nullable
              as List<ResponseAdminViewHistoryCourtBookingPaymentHistory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseAdminViewHistoryDataImpl
    implements _ResponseAdminViewHistoryData {
  const _$ResponseAdminViewHistoryDataImpl(
      {this.id = '',
      @JsonKey(name: 'is_active') this.isActive = true,
      this.username = '',
      this.phone = '',
      this.password = '',
      @JsonKey(name: 'created_at') this.createdAt = '',
      @JsonKey(name: 'updated_at') this.updatedAt = '',
      @JsonKey(name: 'courtBookingPaymentHistory')
      final List<ResponseAdminViewHistoryCourtBookingPaymentHistory>
          courtBookingPaymentHistory = const []})
      : _courtBookingPaymentHistory = courtBookingPaymentHistory;

  factory _$ResponseAdminViewHistoryDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseAdminViewHistoryDataImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
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
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  final List<ResponseAdminViewHistoryCourtBookingPaymentHistory>
      _courtBookingPaymentHistory;
  @override
  @JsonKey(name: 'courtBookingPaymentHistory')
  List<ResponseAdminViewHistoryCourtBookingPaymentHistory>
      get courtBookingPaymentHistory {
    if (_courtBookingPaymentHistory is EqualUnmodifiableListView)
      return _courtBookingPaymentHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courtBookingPaymentHistory);
  }

  @override
  String toString() {
    return 'ResponseAdminViewHistoryData(id: $id, isActive: $isActive, username: $username, phone: $phone, password: $password, createdAt: $createdAt, updatedAt: $updatedAt, courtBookingPaymentHistory: $courtBookingPaymentHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseAdminViewHistoryDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(
                other._courtBookingPaymentHistory,
                _courtBookingPaymentHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isActive,
      username,
      phone,
      password,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_courtBookingPaymentHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseAdminViewHistoryDataImplCopyWith<
          _$ResponseAdminViewHistoryDataImpl>
      get copyWith => __$$ResponseAdminViewHistoryDataImplCopyWithImpl<
          _$ResponseAdminViewHistoryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseAdminViewHistoryDataImplToJson(
      this,
    );
  }
}

abstract class _ResponseAdminViewHistoryData
    implements ResponseAdminViewHistoryData {
  const factory _ResponseAdminViewHistoryData(
      {final String id,
      @JsonKey(name: 'is_active') final bool isActive,
      final String username,
      final String phone,
      final String password,
      @JsonKey(name: 'created_at') final String createdAt,
      @JsonKey(name: 'updated_at') final String updatedAt,
      @JsonKey(name: 'courtBookingPaymentHistory')
      final List<ResponseAdminViewHistoryCourtBookingPaymentHistory>
          courtBookingPaymentHistory}) = _$ResponseAdminViewHistoryDataImpl;

  factory _ResponseAdminViewHistoryData.fromJson(Map<String, dynamic> json) =
      _$ResponseAdminViewHistoryDataImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  String get username;
  @override
  String get phone;
  @override
  String get password;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'courtBookingPaymentHistory')
  List<ResponseAdminViewHistoryCourtBookingPaymentHistory>
      get courtBookingPaymentHistory;
  @override
  @JsonKey(ignore: true)
  _$$ResponseAdminViewHistoryDataImplCopyWith<
          _$ResponseAdminViewHistoryDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
