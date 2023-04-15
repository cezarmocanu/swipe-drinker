import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_identity_get_dto.freezed.dart';
part 'user_identity_get_dto.g.dart';

@freezed
class UserIdentityGetDto with _$UserIdentityGetDto {
  const factory UserIdentityGetDto({
    required int id,
    required String firstName,
    required String lastName,
    required String email,
    required bool guestAccount,
  }) = _UserIdentityGetDto;

  factory UserIdentityGetDto.fromJson(Map<String, Object?> json) => _$UserIdentityGetDtoFromJson(json);
}
