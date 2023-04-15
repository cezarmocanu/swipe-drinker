import 'package:ai_drink/models/user_identity/user_identity_get_dto/user_identity_get_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_identity_response_dto.freezed.dart';
part 'auth_identity_response_dto.g.dart';

@freezed
class AuthIdentityResponseDto with _$AuthIdentityResponseDto {
  const factory AuthIdentityResponseDto({
    required UserIdentityGetDto identity,
    required String token,
  }) = _AuthIdentityResponseDto;

  factory AuthIdentityResponseDto.fromJson(Map<String, Object?> json) => _$AuthIdentityResponseDtoFromJson(json);
}
