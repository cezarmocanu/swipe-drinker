// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_identity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserIdentity _$UserIdentityFromJson(Map<String, dynamic> json) {
  return _UserIdentity.fromJson(json);
}

/// @nodoc
mixin _$UserIdentity {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get guestAccount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIdentityCopyWith<UserIdentity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdentityCopyWith<$Res> {
  factory $UserIdentityCopyWith(
          UserIdentity value, $Res Function(UserIdentity) then) =
      _$UserIdentityCopyWithImpl<$Res, UserIdentity>;
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String email,
      bool guestAccount});
}

/// @nodoc
class _$UserIdentityCopyWithImpl<$Res, $Val extends UserIdentity>
    implements $UserIdentityCopyWith<$Res> {
  _$UserIdentityCopyWithImpl(this._value, this._then);

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
abstract class _$$_UserIdentityCopyWith<$Res>
    implements $UserIdentityCopyWith<$Res> {
  factory _$$_UserIdentityCopyWith(
          _$_UserIdentity value, $Res Function(_$_UserIdentity) then) =
      __$$_UserIdentityCopyWithImpl<$Res>;
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
class __$$_UserIdentityCopyWithImpl<$Res>
    extends _$UserIdentityCopyWithImpl<$Res, _$_UserIdentity>
    implements _$$_UserIdentityCopyWith<$Res> {
  __$$_UserIdentityCopyWithImpl(
      _$_UserIdentity _value, $Res Function(_$_UserIdentity) _then)
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
    return _then(_$_UserIdentity(
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
class _$_UserIdentity implements _UserIdentity {
  const _$_UserIdentity(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.guestAccount});

  factory _$_UserIdentity.fromJson(Map<String, dynamic> json) =>
      _$$_UserIdentityFromJson(json);

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
    return 'UserIdentity(id: $id, firstName: $firstName, lastName: $lastName, email: $email, guestAccount: $guestAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserIdentity &&
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
  _$$_UserIdentityCopyWith<_$_UserIdentity> get copyWith =>
      __$$_UserIdentityCopyWithImpl<_$_UserIdentity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserIdentityToJson(
      this,
    );
  }
}

abstract class _UserIdentity implements UserIdentity {
  const factory _UserIdentity(
      {required final int id,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final bool guestAccount}) = _$_UserIdentity;

  factory _UserIdentity.fromJson(Map<String, dynamic> json) =
      _$_UserIdentity.fromJson;

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
  _$$_UserIdentityCopyWith<_$_UserIdentity> get copyWith =>
      throw _privateConstructorUsedError;
}
