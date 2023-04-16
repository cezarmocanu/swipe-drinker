import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_identity.freezed.dart';
part 'user_identity.g.dart';

@freezed
class UserIdentity with _$UserIdentity {
  const factory UserIdentity({
    required int id,
    required String firstName,
    required String lastName,
    required String email,
    required bool guestAccount,
  }) = _UserIdentity;

  factory UserIdentity.fromJson(Map<String, Object?> json) => _$UserIdentityFromJson(json);
}
