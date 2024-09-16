import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_apps/app/widgets/HomePage/NewsTile.dart';
import 'package:news_apps/app/widgets/HomePage/TrendingCard.dart';
import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          'BERITASATOE',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(
                      5,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.home,
                        size: 25,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(
                      5,
                    ),
                    decoration: BoxDecoration(
                      //color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.book,
                        size: 25,
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(
                      5,
                    ),
                    decoration: BoxDecoration(
                      //color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.settings,
                        size: 25,
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TrendingCard(
                      imageUrl:
                          "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1602062671/a3cvffki8matxnhyvohd.jpg",
                      title:
                          "Juru Parkir di Tebing Tinggi Tewas Terseret Arus saat Cari Kepah",
                      author: "John Doe",
                      tag: "Trending no 1",
                      time: "2 Hari yang lalu",
                    ),
                    TrendingCard(
                      imageUrl:
                          "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01j4gwbtcwdt9e64wj4fvxca04.jpg",
                      title:
                          "18 Saksi Diperiksa Polisi soal Dugaan Perundungan dan Pelecehan SMA Binus Jaksel",
                      author: "John Doe",
                      tag: "Trending no 2",
                      time: "2 Days ago",
                    ),
                    TrendingCard(
                      imageUrl:
                          "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01j7wcbdhwad2b5ep3r7g35kvr.jpg",
                      title:
                          "Puncak Masih Macet Pagi Ini, Wisatawan Terjebak Sejak Kemarin Malam",
                      author: "John Doe",
                      tag: "Trending no 3",
                      time: "2 Hari yang lalu",
                    ),
                  ],
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
              Column(
                children: [
                  NewsTile(
                    imageUrl:
                        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1602062671/a3cvffki8matxnhyvohd.jpg",
                    title:
                        "Juru Parkir di Tebing Tinggi Tewas Terseret Arus saat Cari Kepah",
                    author: "John Doe",
                    time: "2 Hari yang lalu",
                  ),
                  NewsTile(
                    imageUrl:
                        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01j4gwbtcwdt9e64wj4fvxca04.jpg",
                    title:
                        "18 Saksi Diperiksa Polisi soal Dugaan Perundungan dan Pelecehan SMA Binus Jaksel",
                    author: "John Doe",
                    time: "2 Days ago",
                  ),
                  NewsTile(
                    imageUrl:
                        "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01j7wcbdhwad2b5ep3r7g35kvr.jpg",
                    title:
                        "Puncak Masih Macet Pagi Ini, Wisatawan Terjebak Sejak Kemarin Malam",
                    author: "John Doe",
                    time: "2 Hari yang lalu",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
