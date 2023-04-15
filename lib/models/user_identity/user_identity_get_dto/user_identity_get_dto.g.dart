// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_identity_get_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserIdentityGetDto _$$_UserIdentityGetDtoFromJson(
        Map<String, dynamic> json) =>
    _$_UserIdentityGetDto(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      guestAccount: json['guestAccount'] as bool,
    );

Map<String, dynamic> _$$_UserIdentityGetDtoToJson(
        _$_UserIdentityGetDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'guestAccount': instance.guestAccount,
    };
