import 'package:get/get.dart' show GetPage;
import 'package:test_ftm/app/modules/commits/binding/commits_binding.dart';
import 'package:test_ftm/app/modules/commits/views/commits_view.dart';
import 'package:test_ftm/app/modules/root/bindings/root_binding.dart';
import 'package:test_ftm/app/modules/root/views/root_view.dart';

import 'package:test_ftm/app/routes/app_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class ThemeAppPages {
  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(name: Routes.ROOT, page: () => RootView(), binding: RootBinding()),
    GetPage(
        name: Routes.COMMITS,
        page: () => CommitsView(),
        binding: CommitsBinding()),
  ];
}
