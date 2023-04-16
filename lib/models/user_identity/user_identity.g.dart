// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_identity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserIdentity _$$_UserIdentityFromJson(Map<String, dynamic> json) =>
    _$_UserIdentity(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      guestAccount: json['guestAccount'] as bool,
    );

Map<String, dynamic> _$$_UserIdentityToJson(_$_UserIdentity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'guestAccount': instance.guestAccount,
    };
