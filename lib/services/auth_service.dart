import 'dart:convert';
import 'dart:io';

import 'package:ai_drink/constants/api.dart';
import 'package:ai_drink/constants/headers.dart';
import 'package:ai_drink/models/auth/auth_identity_request_dto/auth_identity_request_dto.dart';
import 'package:http/http.dart';

class AuthService {
  Future<Response> postIdentity(String platformId) async {
    Response response;

    try {
      response = await post(
        Uri.parse(Api.authSignup),
        headers: {
          ...Headers.contentTypeJson,
        },
        body: json.encode(
          AuthIdentityRequestDto(id: platformId),
        ),
      );
    } on SocketException catch (e) {
      return Response("", e.osError?.errorCode ?? -1);
    }

    return response;
  }
}
