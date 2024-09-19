import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:news_apps/app/widgets/Components/NavigationBar.dart';

import 'bottom_nav_controller.dart';

class HomePageController extends StatelessWidget {
  const HomePageController({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(
      BottomNavController(),
    );
    return Scaffold(
      floatingActionButton: const MyBottomNav(),
      body: Obx(
        () => controller.pages[controller.index.value],
      ),
    );
  }
}
