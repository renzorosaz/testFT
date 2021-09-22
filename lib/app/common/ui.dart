import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ui {
  static GetBar SuccessSnackBar({String title = 'Success', String? message}) {
    Get.log("[$title] $message");
    return GetBar(
      titleText: Text(title),
    );
  }
}
