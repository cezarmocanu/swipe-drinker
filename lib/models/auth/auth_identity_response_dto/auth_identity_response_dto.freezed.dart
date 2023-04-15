// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_identity_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthIdentityResponseDto _$AuthIdentityResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _AuthIdentityResponseDto.fromJson(json);
}

/// @nodoc
mixin _$AuthIdentityResponseDto {
  UserIdentityGetDto get identity => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthIdentityResponseDtoCopyWith<AuthIdentityResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthIdentityResponseDtoCopyWith<$Res> {
  factory $AuthIdentityResponseDtoCopyWith(AuthIdentityResponseDto value,
          $Res Function(AuthIdentityResponseDto) then) =
      _$AuthIdentityResponseDtoCopyWithImpl<$Res, AuthIdentityResponseDto>;
  @useResult
  $Res call({UserIdentityGetDto identity, String token});

  $UserIdentityGetDtoCopyWith<$Res> get identity;
}

/// @nodoc
class _$AuthIdentityResponseDtoCopyWithImpl<$Res,
        $Val extends AuthIdentityResponseDto>
    implements $AuthIdentityResponseDtoCopyWith<$Res> {
  _$AuthIdentityResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identity = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as UserIdentityGetDto,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIdentityGetDtoCopyWith<$Res> get identity {
    return $UserIdentityGetDtoCopyWith<$Res>(_value.identity, (value) {
      return _then(_value.copyWith(identity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthIdentityResponseDtoCopyWith<$Res>
    implements $AuthIdentityResponseDtoCopyWith<$Res> {
  factory _$$_AuthIdentityResponseDtoCopyWith(_$_AuthIdentityResponseDto value,
          $Res Function(_$_AuthIdentityResponseDto) then) =
      __$$_AuthIdentityResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserIdentityGetDto identity, String token});

  @override
  $UserIdentityGetDtoCopyWith<$Res> get identity;
}

/// @nodoc
class __$$_AuthIdentityResponseDtoCopyWithImpl<$Res>
    extends _$AuthIdentityResponseDtoCopyWithImpl<$Res,
        _$_AuthIdentityResponseDto>
    implements _$$_AuthIdentityResponseDtoCopyWith<$Res> {
  __$$_AuthIdentityResponseDtoCopyWithImpl(_$_AuthIdentityResponseDto _value,
      $Res Function(_$_AuthIdentityResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identity = null,
    Object? token = null,
  }) {
    return _then(_$_AuthIdentityResponseDto(
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as UserIdentityGetDto,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthIdentityResponseDto implements _AuthIdentityResponseDto {
  const _$_AuthIdentityResponseDto(
      {required this.identity, required this.token});

  factory _$_AuthIdentityResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthIdentityResponseDtoFromJson(json);

  @override
  final UserIdentityGetDto identity;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthIdentityResponseDto(identity: $identity, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthIdentityResponseDto &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, identity, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthIdentityResponseDtoCopyWith<_$_AuthIdentityResponseDto>
      get copyWith =>
          __$$_AuthIdentityResponseDtoCopyWithImpl<_$_AuthIdentityResponseDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthIdentityResponseDtoToJson(
      this,
    );
  }
}

abstract class _AuthIdentityResponseDto implements AuthIdentityResponseDto {
  const factory _AuthIdentityResponseDto(
      {required final UserIdentityGetDto identity,
      required final String token}) = _$_AuthIdentityResponseDto;

  factory _AuthIdentityResponseDto.fromJson(Map<String, dynamic> json) =
      _$_AuthIdentityResponseDto.fromJson;

  @override
  UserIdentityGetDto get identity;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthIdentityResponseDtoCopyWith<_$_AuthIdentityResponseDto>
      get copyWith => throw _privateConstructorUsedError;
}
