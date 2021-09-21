import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void initServices() async {
  Get.log('starting services ...');
  await GetStorage.init();
  //create services github
  Get.log('All services started...');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServices();

  runApp(
    GetMaterialApp(),
  );
}
