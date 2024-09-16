import 'package:get/get.dart';

import 'package:news_apps/app/modules/HomePage/controllers/bottom_nav_controller.dart';

import '../controllers/home_page_controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(
      () => BottomNavController(),
    );
    Get.lazyPut<HomePageController>(
      () => HomePageController(),
    );
  }
}
