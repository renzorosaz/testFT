import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ftm/app/common/ui.dart';
import 'package:test_ftm/app/models/commit_model.dart';
import 'package:test_ftm/app/repositories/commits_repository.dart';

class CommitsController extends GetxController {
  CommitsRepository? _commitsRepository;

  final commits = <Commit>[].obs;
  final page = 0.obs;
  final isLoading = true.obs;
  final isDone = false.obs;

  CommitsController() {
    _commitsRepository = new CommitsRepository();
  }

  @override
  void onInit() async {
    await refreshCommits();
    super.onInit();
  }

  Future refreshCommits({bool? showMessage = true}) async {
    await getAllCommits();
    if (showMessage == true) {
      Get.showSnackbar(Ui.SuccessSnackBar(
          message: "List of commits refreshed successfully"));
    }
  }

  Future getAllCommits() async {
    try {
      commits.assignAll(await _commitsRepository!.getAllCommits());
    } catch (e) {
      Get.showSnackbar(Ui.ErrorSnackBar(message: e.toString()));
    }
  }
}
