import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_apps/app/widgets/ArtikelPage/SearchBox.dart';

import '../../../widgets/HomePage/NewsTile.dart';
import '../controllers/artikel_page_controller.dart';

class ArtikelPageView extends GetView<ArtikelPageController> {
  const ArtikelPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Artikel Page',
      //     style: Theme.of(context).textTheme.headlineLarge,
      //   ),
      //   backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              SearchBox(),
              SizedBox(height: 20),
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
