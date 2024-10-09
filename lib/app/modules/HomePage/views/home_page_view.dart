import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_apps/app/modules/HomePage/controllers/news_controller.dart';
import 'package:news_apps/app/routes/app_pages.dart';
import 'package:news_apps/app/widgets/Components/news_tile_loading.dart';
import 'package:news_apps/app/widgets/Components/trending_card_loading.dart';
import 'package:news_apps/app/widgets/HomePage/NewsTile.dart';
import 'package:news_apps/app/widgets/HomePage/TrendingCard.dart';
import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(
                      Icons.dashboard,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "BERITASATOE",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      newsController.getTrendingNews();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "Lihat lainnya",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(
                  () => newsController.isTrendingLoading.value
                      ? const Row(
                          children: [
                            TrendingLoading(),
                            TrendingLoading(),
                          ],
                        )
                      : Row(
                          children: newsController.trendingNewsList
                              .map(
                                (e) => TrendingCard(
                                  imageUrl: e.urlToImage!,
                                  title: e.title!,
                                  author: e.author ?? "Unknown",
                                  tag: "Trending no 1",
                                  time: e.publishedAt!,
                                  onTap: () {
                                    Get.toNamed(
                                      Routes.NEWS_DETAIL,
                                      arguments: e,
                                    );
                                  },
                                ),
                              )
                              .toList(),
                        ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Berita Terkini",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "Lihat lainnya",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => newsController.isNewsForYouLoading.value
                    ? const Column(
                        children: [
                          NewsTileLoading(),
                          NewsTileLoading(),
                          NewsTileLoading(),
                        ],
                      )
                    : Column(
                        children: newsController.newsForYouList
                            .map(
                              (e) => NewsTile(
                                onTap: () {
                                  Get.toNamed(
                                    Routes.NEWS_DETAIL,
                                    arguments: e,
                                  );
                                },
                                imageUrl:
                                    e.urlToImage ?? newsController.imageUrl,
                                title: e.title!,
                                author: e.author ?? "Unknown",
                                time: e.publishedAt!,
                              ),
                            )
                            .toList(),
                      ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Berita Tesla",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "Lihat lainnya",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => newsController.isTeslaLoading.value
                    ? const Column(
                        children: [
                          NewsTileLoading(),
                          NewsTileLoading(),
                          NewsTileLoading(),
                        ],
                      )
                    : Column(
                        children: newsController.teslaNews5
                            .map(
                              (e) => NewsTile(
                                onTap: () {
                                  Get.toNamed(
                                    Routes.NEWS_DETAIL,
                                    arguments: e,
                                  );
                                },
                                imageUrl:
                                    e.urlToImage ?? newsController.imageUrl,
                                title: e.title!,
                                author: e.author ?? "Unknown",
                                time: e.publishedAt!,
                              ),
                            )
                            .toList(),
                      ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Berita Apple",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "Lihat lainnya",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(
                  () => newsController.isAppleLoading.value
                      ? const Row(
                          children: [
                            TrendingLoading(),
                            TrendingLoading(),
                          ],
                        )
                      : Row(
                          children: newsController.appleNews5
                              .map(
                                (e) => TrendingCard(
                                  imageUrl:
                                      e.urlToImage ?? newsController.imageUrl,
                                  title: e.title!,
                                  author: e.author ?? "Unknown",
                                  tag: "Trending no 1",
                                  time: e.publishedAt!,
                                  onTap: () {
                                    Get.toNamed(
                                      Routes.NEWS_DETAIL,
                                      arguments: e,
                                    );
                                  },
                                ),
                              )
                              .toList(),
                        ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Berita Bisnis",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "Lihat lainnya",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => newsController.isBusinessLoading.value
                    ? const Column(
                        children: [
                          NewsTileLoading(),
                          NewsTileLoading(),
                          NewsTileLoading(),
                        ],
                      )
                    : Column(
                        children: newsController.businessNews5
                            .map(
                              (e) => NewsTile(
                                onTap: () {
                                  Get.toNamed(
                                    Routes.NEWS_DETAIL,
                                    arguments: e,
                                  );
                                },
                                imageUrl:
                                    e.urlToImage ?? newsController.imageUrl,
                                title: e.title!,
                                author: e.author ?? "Unknown",
                                time: e.publishedAt!,
                              ),
                            )
                            .toList(),
                      ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
