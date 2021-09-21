import 'package:get/get.dart';
import 'package:test_ftm/app/modules/commits/controllers/commits_controller.dart';
import 'package:test_ftm/app/modules/profile/controllers/profile_controller.dart';
import 'package:test_ftm/app/modules/root/controllers/root_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootControler>(
      () => RootControler(),
    );
    Get.put(CommitsController(), permanent: true);

    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
