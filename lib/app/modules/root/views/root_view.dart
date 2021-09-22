import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ftm/app/modules/global_widgets/custom_bottom_nav_bar.dart';
import 'package:test_ftm/app/modules/root/controllers/root_controller.dart';

class RootView extends GetView<RootControler> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: controller.currentPage,
        bottomNavigationBar: CustomBottomNavigationBar(
          backgroundColor: context.theme.scaffoldBackgroundColor,
          itemColor: context.theme.accentColor,
          currentIndex: controller.currentIndex.value,
          onChange: (index) {
            controller.changePage(index);
          },
          children: [
            CustonBottomNavigationItem(
                icon: Icons.compare_arrows_outlined, label: "Commits")
          ],
        ),
      );
    });
  }
}
