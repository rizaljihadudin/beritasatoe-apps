import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_apps/app/modules/HomePage/controllers/news_controller.dart';
import 'package:news_apps/app/widgets/ArtikelPage/SearchBox.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/HomePage/NewsTile.dart';
import '../controllers/artikel_page_controller.dart';

class ArtikelPageView extends GetView<ArtikelPageController> {
  const ArtikelPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const SearchBox(),
              const SizedBox(height: 20),
              Obx(
                () => Column(
                  children: newsController.newsForYouList
                      .map(
                        (e) => NewsTile(
                          onTap: () {
                            Get.toNamed(
                              Routes.NEWS_DETAIL,
                              arguments: e,
                            );
                          },
                          imageUrl: e.urlToImage ?? newsController.imageUrl,
                          title: e.title!,
                          author: e.author ?? "Unknown",
                          time: e.publishedAt!,
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
