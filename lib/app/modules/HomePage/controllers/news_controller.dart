import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../models/NewsModel.dart';

class NewsController extends GetxController {
  RxList<NewsModel> trendingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYou5 = <NewsModel>[].obs;
  RxList<NewsModel> appleNewsList = <NewsModel>[].obs;
  RxList<NewsModel> appleNews5 = <NewsModel>[].obs;
  RxList<NewsModel> teslaNewsList = <NewsModel>[].obs;
  RxList<NewsModel> teslaNews5 = <NewsModel>[].obs;
  RxList<NewsModel> businessNewsList = <NewsModel>[].obs;
  RxList<NewsModel> businessNews5 = <NewsModel>[].obs;
  RxBool isTrendingLoading = false.obs;
  RxBool isNewsForYouLoading = false.obs;
  RxBool isTeslaLoading = false.obs;
  RxBool isAppleLoading = false.obs;
  RxBool isBusinessLoading = false.obs;

  String imageUrl =
      "https://fastly.picsum.photos/id/862/300/200.jpg?hmac=xU4Z4sQtACAxj4xQu2fRhJHItIOd9Yg5AtWCguPng9c";
  @override
  void onInit() async {
    super.onInit();
    getTrendingNews();
    getNewsForYou();
    getAppleNews();
    getTeslaNews();
    getBusinessNews();
  }

  Future<void> getTrendingNews() async {
    isTrendingLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=1dfddb21214a4fae89597ef31f04d573";
    try {
      var response = await http.get(Uri.parse(baseURL));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          trendingNewsList.add(NewsModel.fromJson(news));
        }
      } else {
        print("Something went wrong in Trending news");
      }
    } catch (e) {
      print(e);
    }
    isTrendingLoading.value = false;
  }

  Future<void> getNewsForYou() async {
    isNewsForYouLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=1dfddb21214a4fae89597ef31f04d573";
    try {
      var response = await http.get(Uri.parse(baseURL));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          newsForYouList.add(NewsModel.fromJson(news));
        }
        newsForYou5.value = newsForYouList.sublist(0, 5);
      } else {
        print("Something went wrong in Trending news");
      }
    } catch (e) {
      print(e);
    }
    isNewsForYouLoading.value = false;
  }

  Future<void> getAppleNews() async {
    isAppleLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?q=apple&from=2024-09-30&to=2024-09-30&sortBy=popularity&apiKey=1dfddb21214a4fae89597ef31f04d573";
    try {
      var response = await http.get(Uri.parse(baseURL));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          appleNewsList.add(NewsModel.fromJson(news));
        }
        appleNews5.value = appleNewsList.sublist(0, 5);
      } else {
        print("Something went wrong in Trending news");
      }
    } catch (e) {
      print(e);
    }
    isAppleLoading.value = false;
  }

  Future<void> getTeslaNews() async {
    isTeslaLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-09-09&sortBy=publishedAt&apiKey=1dfddb21214a4fae89597ef31f04d573";
    try {
      var response = await http.get(Uri.parse(baseURL));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          teslaNewsList.add(NewsModel.fromJson(news));
        }
        teslaNews5.value = teslaNewsList.sublist(0, 3);
      } else {
        print("Something went wrong in Trending news");
      }
    } catch (e) {
      print(e);
    }
    isTeslaLoading.value = false;
  }

  Future<void> getBusinessNews() async {
    isBusinessLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=1dfddb21214a4fae89597ef31f04d573";
    try {
      var response = await http.get(Uri.parse(baseURL));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          businessNewsList.add(NewsModel.fromJson(news));
        }
        businessNews5.value = businessNewsList.sublist(0, 3);
      } else {
        print("Something went wrong in Trending news");
      }
    } catch (e) {
      print(e);
    }
    isBusinessLoading.value = false;
  }

  Future<void> searchNews(String search) async {
    isNewsForYouLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?q=${search}&apiKey=1dfddb21214a4fae89597ef31f04d573";
    try {
      var response = await http.get(Uri.parse(baseURL));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        newsForYouList.clear();
        int i = 0;
        for (var news in articles) {
          i++;
          newsForYouList.add(NewsModel.fromJson(news));
          if (i == 10) {
            break;
          }
        }
      } else {
        print("Something went wrong in Trending news");
      }
    } catch (e) {
      print(e);
    }
    isNewsForYouLoading.value = false;
  }
}
