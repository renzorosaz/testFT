import 'package:get/get.dart';
import 'package:test_ftm/app/models/global_model.dart';

class GlobalService extends GetxService {
  final global = Global().obs;

  Future<GlobalService> init() async {
    // create global jsn an return
    return this;
  }
}
