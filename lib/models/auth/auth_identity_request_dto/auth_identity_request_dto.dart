import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_identity_request_dto.freezed.dart';
part 'auth_identity_request_dto.g.dart';

@freezed
class AuthIdentityRequestDto with _$AuthIdentityRequestDto {
  const factory AuthIdentityRequestDto({
    required String id,
  }) = _AuthIdentityRequestDto;

  factory AuthIdentityRequestDto.fromJson(Map<String, Object?> json) => _$AuthIdentityRequestDtoFromJson(json);
}
