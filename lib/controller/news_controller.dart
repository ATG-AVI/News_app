import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/model/news_models.dart';

class NewsController extends GetxController {
  RxList<Article> trendingNewsList = <Article>[].obs;
  RxList<Article> NewsForYouList = <Article>[].obs;

  Future<void> getTrendingNews() async {
    var baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=ae53e7e6bcf54c1787668cc75b24052d";

    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          trendingNewsList.add(Article.fromJson(news));
        }
      } else {
        print("Something went Wrong in trending news");
      }
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> getNewsForYou() async {
    var baseURL =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=ae53e7e6bcf54c1787668cc75b24052d";

    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          NewsForYouList.add(Article.fromJson(news));
        }
      } else {
        print("Something went Wrong in trending news");
      }
    } catch (ex) {
      print(ex);
    }
  }
}
