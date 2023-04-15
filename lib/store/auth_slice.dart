import 'dart:convert';
import 'dart:io';

import 'package:ai_drink/models/auth/auth_identity_response_dto/auth_identity_response_dto.dart';
import 'package:ai_drink/models/user_identity/user_identity_get_dto/user_identity_get_dto.dart';
import 'package:ai_drink/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthSlice extends ChangeNotifier {
  AuthService _authService = AuthService();

  late SharedPreferences _preferences;
  late UserIdentityGetDto _userIdentity;

  UserIdentityGetDto get userIdentity => _userIdentity;

  AuthSlice() {
    init();
  }

  void init() async {
    String? _deviceId = await PlatformDeviceId.getDeviceId;
    final authIdentity = await postIdentity(_deviceId);

    if (authIdentity == null) {
      return;
    }

    _userIdentity = authIdentity.identity;
    _preferences = await SharedPreferences.getInstance();
    //TODO add constant to key
    await _preferences.setString('token', authIdentity.token);
    print(authIdentity.token);
    notifyListeners();
  }

  Future<AuthIdentityResponseDto?> postIdentity(String? deviceId) async {
    if (deviceId == null) {
      return null;
    }

    Response r = await _authService.postIdentity(deviceId);

    if ([HttpStatus.ok, HttpStatus.created].contains(r.statusCode)) {
      return AuthIdentityResponseDto.fromJson(json.decode(r.body));
    } else {
      print("[AuthSlice][Error]${String.fromCharCodes(r.bodyBytes)}");
      return null;
    }
  }
}
