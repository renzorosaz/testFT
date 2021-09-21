import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ftm/app/models/custom_page_model.dart';
import 'package:test_ftm/app/modules/account/controllers/account_controller.dart';
import 'package:test_ftm/app/modules/account/views/account_view.dart';
import 'package:test_ftm/app/modules/commits/controllers/commits_controller.dart';
import 'package:test_ftm/app/modules/commits/views/commits_view.dart';

class RootControler extends GetxController {
  final currentIndex = 0.obs;
  final customPages = <CustomPage>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  List<Widget> pages = [CommitsView(), AccountView()];

  Widget get currentPage => pages[currentIndex.value];

  //Change page in route
  Future<void> changePageInRoot(int _index) async {
    currentIndex.value = _index;
    await refreshPage(_index);
  }

  Future<void> refreshPage(int _index) async {
    switch (_index) {
      case 0:
        {
          await Get.find<CommitsController>().refreshCommits();
          break;
        }
      case 1:
        {
          await Get.find<AccountController>().refreshAccount();
        }
    }
  }
}
