import 'dart:async';

import 'package:http/http.dart';
import 'package:pomotica/services/habiticaAuthServices.dart';
import 'package:pomotica/services/myHabiticaAuth.dart';

import '../model/authModel.dart';

class HabiticaApi {
  late AuthModel authModel;
  late String _apiKey;
  late String _userId;
  final String _xclient = "${MyHabiticaAuth.userId}+pomotica";
  String path;
  Client client = Client();

  HabiticaApi({this.path = '/api/v3/user'});

  Future<Response> getApiResponse() async {
    // await Future.delayed(const Duration(milliseconds: 2000));
    return client.get(gethabiticaUri(path), headers: await getHeaders());
  }

  Future<Response> postTaskToApi(Map<String, dynamic> task) async {
    return client.post(gethabiticaUri(path), headers: await getHeaders(), body: task);
  }

  gethabiticaUri(path) => Uri(
        scheme: 'https',
        host: 'habitica.com',
        path: path,
      );

  Future<Map<String, String>> getHeaders() async {
    AuthModel auth = await HabiticaAuthServices.getAuth();

    _apiKey = auth.apiKey;
    _userId = auth.userId;
    await Future.delayed(const Duration(milliseconds: 2000));
    return {
      'Content-Type': 'json',
      'x-api-user': _userId,
      'x-api-key': _apiKey,
      'x-client': _xclient,
    };
  }
}
