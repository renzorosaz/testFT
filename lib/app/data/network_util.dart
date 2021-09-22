import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkUtil {
  static const String msgGeneric = "Error trying recovery data";
  static const String msgRedGeneric =
      "Check your internet connection and try again";
  static NetworkUtil _instance = new NetworkUtil.internal();

  NetworkUtil.internal();
  factory NetworkUtil() => _instance;

  Future<http.Response> get(String url, {headers}) {
    try {
      return http.get(url, headers: headers).then((http.Response response) {
        final int statusCode = response.statusCode;
        print(statusCode);
        if (statusCode < 200 || statusCode > 400 || json == null) {
          print(statusCode);
          throw (msgGeneric);
        }
        return response;
      }).catchError((e) {
        print(e.toString());
        throw (e.toString());
      });
    } catch (e) {
      throw (e.toString());
    }
  }
}
