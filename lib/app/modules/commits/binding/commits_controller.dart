import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get.dart';
import 'package:test_ftm/app/modules/commits/controllers/commits_controller.dart';

class CommitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CommitsController());
  }
}
