import 'package:get/get.dart';
import 'package:test_ftm/app/common/custom_trace.dart';

mixin ApiClient {
  String urlBase = "https://api.github.com/";

  String getApiBaseUrl(String path) {
    return "";
  }

  Uri getApiBaseUri(String path) {
    return Uri.parse(getApiBaseUrl(path));
  }

  void printUri(StackTrace stackTrace, Uri uri) {
    Get.log(CustomTrace(stackTrace, message: uri.toString()).toString());
  }
}
