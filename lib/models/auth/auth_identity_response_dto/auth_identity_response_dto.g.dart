// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_identity_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthIdentityResponseDto _$$_AuthIdentityResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _$_AuthIdentityResponseDto(
      identity: UserIdentity.fromJson(json['identity'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_AuthIdentityResponseDtoToJson(
        _$_AuthIdentityResponseDto instance) =>
    <String, dynamic>{
      'identity': instance.identity,
      'token': instance.token,
    };
