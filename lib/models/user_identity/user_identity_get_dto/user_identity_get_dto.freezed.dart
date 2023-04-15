// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_identity_get_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserIdentityGetDto _$UserIdentityGetDtoFromJson(Map<String, dynamic> json) {
  return _UserIdentityGetDto.fromJson(json);
}

/// @nodoc
mixin _$UserIdentityGetDto {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get guestAccount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIdentityGetDtoCopyWith<UserIdentityGetDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdentityGetDtoCopyWith<$Res> {
  factory $UserIdentityGetDtoCopyWith(
          UserIdentityGetDto value, $Res Function(UserIdentityGetDto) then) =
      _$UserIdentityGetDtoCopyWithImpl<$Res, UserIdentityGetDto>;
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String email,
      bool guestAccount});
}

/// @nodoc
class _$UserIdentityGetDtoCopyWithImpl<$Res, $Val extends UserIdentityGetDto>
    implements $UserIdentityGetDtoCopyWith<$Res> {
  _$UserIdentityGetDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? guestAccount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      guestAccount: null == guestAccount
          ? _value.guestAccount
          : guestAccount // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserIdentityGetDtoCopyWith<$Res>
    implements $UserIdentityGetDtoCopyWith<$Res> {
  factory _$$_UserIdentityGetDtoCopyWith(_$_UserIdentityGetDto value,
          $Res Function(_$_UserIdentityGetDto) then) =
      __$$_UserIdentityGetDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String email,
      bool guestAccount});
}

/// @nodoc
class __$$_UserIdentityGetDtoCopyWithImpl<$Res>
    extends _$UserIdentityGetDtoCopyWithImpl<$Res, _$_UserIdentityGetDto>
    implements _$$_UserIdentityGetDtoCopyWith<$Res> {
  __$$_UserIdentityGetDtoCopyWithImpl(
      _$_UserIdentityGetDto _value, $Res Function(_$_UserIdentityGetDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? guestAccount = null,
  }) {
    return _then(_$_UserIdentityGetDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      guestAccount: null == guestAccount
          ? _value.guestAccount
          : guestAccount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserIdentityGetDto implements _UserIdentityGetDto {
  const _$_UserIdentityGetDto(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.guestAccount});

  factory _$_UserIdentityGetDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserIdentityGetDtoFromJson(json);

  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final bool guestAccount;

  @override
  String toString() {
    return 'UserIdentityGetDto(id: $id, firstName: $firstName, lastName: $lastName, email: $email, guestAccount: $guestAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserIdentityGetDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.guestAccount, guestAccount) ||
                other.guestAccount == guestAccount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, firstName, lastName, email, guestAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserIdentityGetDtoCopyWith<_$_UserIdentityGetDto> get copyWith =>
      __$$_UserIdentityGetDtoCopyWithImpl<_$_UserIdentityGetDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserIdentityGetDtoToJson(
      this,
    );
  }
}

abstract class _UserIdentityGetDto implements UserIdentityGetDto {
  const factory _UserIdentityGetDto(
      {required final int id,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final bool guestAccount}) = _$_UserIdentityGetDto;

  factory _UserIdentityGetDto.fromJson(Map<String, dynamic> json) =
      _$_UserIdentityGetDto.fromJson;

  @override
  int get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  bool get guestAccount;
  @override
  @JsonKey(ignore: true)
  _$$_UserIdentityGetDtoCopyWith<_$_UserIdentityGetDto> get copyWith =>
      throw _privateConstructorUsedError;
}
