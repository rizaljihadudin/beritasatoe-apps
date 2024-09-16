import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_apps/app/config/Theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News App",
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: Routes.homePage,
      getPages: AppPages.routes,
    ),
  );
}
