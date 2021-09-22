import 'package:get/get.dart';
import 'package:test_ftm/app/models/global_model.dart';

class GlobalService extends GetxService {
  final global = Global().obs;

  Future<String> init() async {
    String urlBase = "https://api.github.com/";
    var response = urlBase;
    return response;
  }
}
