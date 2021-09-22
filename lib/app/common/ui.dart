import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ui {
  static GetBar SuccessSnackBar(
      {String title = 'Success', required String message}) {
    Get.log("[$title] $message");
    return GetBar(
      titleText: Text(title,
          style: Get.textTheme.headline6!
              .merge(TextStyle(color: Get.theme.primaryColor))),
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(20),
      backgroundColor: Get.theme.accentColor,
      icon: Icon(Icons.check_circle_outline,
          size: 32, color: Get.theme.primaryColor),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      borderRadius: 8,
      dismissDirection: SnackDismissDirection.HORIZONTAL,
      duration: Duration(seconds: 5),
    );
  }

  static GetBar ErrorSnackBar({String title = 'Error', String? message}) {
    Get.log("[$title] $message", isError: true);
    return GetBar(
      titleText: Text(title,
          style: Get.textTheme.headline6!
              .merge(TextStyle(color: Get.theme.primaryColor))),
      messageText: Text(message!,
          style: Get.textTheme.caption!
              .merge(TextStyle(color: Get.theme.primaryColor))),
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(20),
      backgroundColor: Colors.redAccent,
      icon: Icon(Icons.remove_circle_outline,
          size: 32, color: Get.theme.primaryColor),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      borderRadius: 8,
      duration: Duration(seconds: 5),
    );
  }

  static BoxDecoration getBoxDecotarion(
      {Color? color, double? radius, Border? border, Gradient? gradient}) {
    return BoxDecoration(
        color: color ?? Get.theme.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 10)),
        boxShadow: [
          BoxShadow(
              color: Get.theme.focusColor.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 5)),
        ],
        border:
            border ?? Border.all(color: Get.theme.focusColor.withOpacity(0.05)),
        gradient: gradient);
  }
}
