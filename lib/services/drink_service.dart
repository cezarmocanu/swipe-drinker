import 'dart:io';

import 'package:ai_drink/constants/api.dart';
import 'package:ai_drink/services/headers_service.dart';
import 'package:http/http.dart';

class DrinkService {
  final HeadersService _headersService = HeadersService();

  Future<Response> getDrinksList() async {
    Response response;

    try {
      response = await get(
        Uri.parse(Api.drinks),
        headers: {
          ...await _headersService.authorizationHeader,
        },
      );
    } on SocketException catch (e) {
      return Response("", e.osError?.errorCode ?? -1);
    }

    return response;
  }
}
