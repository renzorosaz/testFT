import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_ftm/app/routes/theme_app_pages.dart';

void initServices() async {
  Get.log('starting services ...');
  await GetStorage.init();
  //create services github
//await Get.putAsync(() => GlobalService().init());

  Get.log('All services started...');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServices();

  runApp(
    GetMaterialApp(
      initialRoute: ThemeAppPages.INITIAL,
      getPages: ThemeAppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
