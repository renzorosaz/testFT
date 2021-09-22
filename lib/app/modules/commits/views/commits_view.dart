import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ftm/app/modules/commits/controllers/commits_controller.dart';
import 'package:test_ftm/app/providers/github_provider.dart';

class CommitsView extends GetView<CommitsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Commits", style: Get.textTheme.headline6),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            controller.refreshCommits(showMessage: true);
          },
          child: Text(""),
        ));
  }
}
