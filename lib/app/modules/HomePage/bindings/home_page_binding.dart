import 'package:get/get.dart';

import 'package:news_apps/app/modules/HomePage/controllers/bottom_nav_controller.dart';
import 'package:news_apps/app/modules/HomePage/controllers/news_controller.dart';

import '../controllers/home_page_controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsController>(
      () => NewsController(),
    );
    Get.lazyPut<BottomNavController>(
      () => BottomNavController(),
    );
    Get.lazyPut<HomePageController>(
      () => const HomePageController(),
    );
  }
}
