import 'dart:convert';
import 'dart:io';

import 'package:ai_drink/models/auth/auth_identity_response_dto/auth_identity_response_dto.dart';
import 'package:ai_drink/models/drink/drink.dart';
import 'package:ai_drink/models/user_identity/user_identity_get_dto/user_identity_get_dto.dart';
import 'package:ai_drink/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:platform_device_id/platform_device_id.dart';

import '../services/drink_service.dart';

class AuthSlice extends ChangeNotifier {
  AuthService _authService = AuthService();

  String? _deviceId;
  late UserIdentityGetDto _userIdentity;

  UserIdentityGetDto get userIdentity => _userIdentity;

  AuthSlice() {
    loadDeviceId();
  }

  void loadDeviceId() async {
    _deviceId = await PlatformDeviceId.getDeviceId;
    postIdentity();
    // TODO handle case in which deviceId is null

    notifyListeners();
  }

  void postIdentity() async {
    if (_deviceId == null) {
      return;
    }

    Response r = await _authService.postIdentity(_deviceId!);

    if ([HttpStatus.ok, HttpStatus.created].contains(r.statusCode)) {
      _userIdentity = AuthIdentityResponseDto.fromJson(json.decode(r.body)).identity;
    } else {
      print(String.fromCharCodes(r.bodyBytes));
    }

    notifyListeners();
  }
}
