import 'package:get/get.dart';
import 'package:news_apps/app/modules/ArtikelPage/views/artikel_page_view.dart';
import 'package:news_apps/app/modules/HomePage/views/home_page_view.dart';
import 'package:news_apps/app/modules/ProfilePage/views/profile_page_view.dart';

class BottomNavController extends GetxController {
  RxInt index = 0.obs;

  var pages = [
    const HomePageView(),
    const ArtikelPageView(),
    const ProfilePageView(),
  ];
}
