import 'dart:convert';
import 'dart:io';

import 'package:ai_drink/models/auth/auth_identity_response_dto/auth_identity_response_dto.dart';
import 'package:ai_drink/models/user_identity/user_identity.dart';
import 'package:ai_drink/services/auth_service.dart';
import 'package:ai_drink/services/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:platform_device_id/platform_device_id.dart';

class AuthSlice extends ChangeNotifier {
  final AuthService _authService = AuthService();
  final SharedPreferencesService _preferencesService = SharedPreferencesService();
  late UserIdentity _userIdentity;

  UserIdentity get userIdentity => _userIdentity;

  AuthSlice() {
    init();
  }

  void init() async {
    String? deviceId = await PlatformDeviceId.getDeviceId;
    final authIdentity = await postIdentity(deviceId);

    if (authIdentity == null) {
      return;
    }

    _userIdentity = authIdentity.identity;
    await _preferencesService.setAuthorizationToken(authIdentity.token);
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
      //TODO add logger
      print("[AuthSlice][Error]${String.fromCharCodes(r.bodyBytes)}");
      return null;
    }
  }
}
