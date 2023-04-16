import 'package:ai_drink/services/shared_preferences_service.dart';

class HeadersService {
  final SharedPreferencesService _preferencesService = SharedPreferencesService();

  Future<Map<String, String>> get authorizationHeader async => {
        "Authorization": "Bearer ${await _preferencesService.getAuthorizationToken() ?? ""}",
      };
}
