import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_apps/app/config/Theme.dart';
import 'package:news_apps/app/modules/HomePage/controllers/home_page_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News App",
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      getPages: AppPages.routes,
      home: const HomePageController(),
    ),
  );
}
