import 'dart:io';

import 'package:http/http.dart';

import '../constants/api.dart';

class DrinkService {
  Future<Response> getDrinksList() async {
    Response response;

    try {
      response = await get(
        Uri.parse(Api.drinks),
        headers: Api.requestHeaders,
      );
    } on SocketException catch (e) {
      return Response("", e.osError?.errorCode ?? -1);
    }

    return response;
  }
}
