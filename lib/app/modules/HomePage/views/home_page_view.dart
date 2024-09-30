import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_apps/app/modules/HomePage/controllers/news_controller.dart';
import 'package:news_apps/app/routes/app_pages.dart';
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
                  () => Row(
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
                          imageUrl: e.urlToImage ??
                              "https://fastly.picsum.photos/id/862/300/200.jpg?hmac=xU4Z4sQtACAxj4xQu2fRhJHItIOd9Yg5AtWCguPng9c",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
