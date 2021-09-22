import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ftm/app/models/custom_page_model.dart';
import 'package:test_ftm/app/modules/commits/controllers/commits_controller.dart';
import 'package:test_ftm/app/modules/commits/views/commits_view.dart';
import 'package:test_ftm/app/modules/profile/controllers/profile_controller.dart';
import 'package:test_ftm/app/modules/profile/views/profile.dart';

class RootControler extends GetxController {
  final currentIndex = 0.obs;
  final customPages = <CustomPage>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  List<Widget> pages = [CommitsView()];

  Widget get currentPage => pages[currentIndex.value];

  //Change page in route
  Future<void> changePageInRoot(int _index) async {
    currentIndex.value = _index;
    await refreshPage(_index);
  }

  Future<void> changePage(int _index) async {
    await changePageInRoot(_index);
  }

  Future<void> refreshPage(int _index) async {
    switch (_index) {
      case 0:
        {
          await Get.find<CommitsController>().refreshCommits();
          break;
        }
    }
  }
}
