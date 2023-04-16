import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  Future<void> setAuthorizationToken(String authorizationToken) async {
    var preferences = await SharedPreferences.getInstance();
    //TODO add constant to key
    await preferences.setString('token', authorizationToken);
  }

  Future<String?> getAuthorizationToken() async {
    var preferences = await SharedPreferences.getInstance();
    //TODO add constant to key
    return preferences.getString('token');
  }
}
