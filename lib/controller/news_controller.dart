import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NewsController extends GetxController {
  Future<void> getTrendingNews() async {
    var baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=ae53e7e6bcf54c1787668cc75b24052d";
    var response = await http.get(Uri.parse(baseURL));
    print(response);
    if (response.statusCode == 200) {
      print(response.body);
      var body = jsonDecode(response.body);
      print(body);
    }
  }
}
