// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_identity_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthIdentityRequestDto _$AuthIdentityRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _AuthIdentityRequestDto.fromJson(json);
}

/// @nodoc
mixin _$AuthIdentityRequestDto {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthIdentityRequestDtoCopyWith<AuthIdentityRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthIdentityRequestDtoCopyWith<$Res> {
  factory $AuthIdentityRequestDtoCopyWith(AuthIdentityRequestDto value,
          $Res Function(AuthIdentityRequestDto) then) =
      _$AuthIdentityRequestDtoCopyWithImpl<$Res, AuthIdentityRequestDto>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$AuthIdentityRequestDtoCopyWithImpl<$Res,
        $Val extends AuthIdentityRequestDto>
    implements $AuthIdentityRequestDtoCopyWith<$Res> {
  _$AuthIdentityRequestDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_AuthIdentityRequestDtoCopyWith<$Res>
    implements $AuthIdentityRequestDtoCopyWith<$Res> {
  factory _$$_AuthIdentityRequestDtoCopyWith(_$_AuthIdentityRequestDto value,
          $Res Function(_$_AuthIdentityRequestDto) then) =
      __$$_AuthIdentityRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_AuthIdentityRequestDtoCopyWithImpl<$Res>
    extends _$AuthIdentityRequestDtoCopyWithImpl<$Res,
        _$_AuthIdentityRequestDto>
    implements _$$_AuthIdentityRequestDtoCopyWith<$Res> {
  __$$_AuthIdentityRequestDtoCopyWithImpl(_$_AuthIdentityRequestDto _value,
      $Res Function(_$_AuthIdentityRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_AuthIdentityRequestDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthIdentityRequestDto implements _AuthIdentityRequestDto {
  const _$_AuthIdentityRequestDto({required this.id});

  factory _$_AuthIdentityRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthIdentityRequestDtoFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'AuthIdentityRequestDto(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthIdentityRequestDto &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthIdentityRequestDtoCopyWith<_$_AuthIdentityRequestDto> get copyWith =>
      __$$_AuthIdentityRequestDtoCopyWithImpl<_$_AuthIdentityRequestDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthIdentityRequestDtoToJson(
      this,
    );
  }
}

abstract class _AuthIdentityRequestDto implements AuthIdentityRequestDto {
  const factory _AuthIdentityRequestDto({required final String id}) =
      _$_AuthIdentityRequestDto;

  factory _AuthIdentityRequestDto.fromJson(Map<String, dynamic> json) =
      _$_AuthIdentityRequestDto.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_AuthIdentityRequestDtoCopyWith<_$_AuthIdentityRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
