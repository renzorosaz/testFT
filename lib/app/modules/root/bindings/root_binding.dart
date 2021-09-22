import 'package:get/get.dart';
import 'package:test_ftm/app/modules/commits/controllers/commits_controller.dart';
import 'package:test_ftm/app/modules/root/controllers/root_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootControler>(
      () => RootControler(),
    );
    Get.lazyPut<CommitsController>(
      () => CommitsController(),
    );
  }
}
