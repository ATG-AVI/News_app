import 'package:get/get.dart';
import 'package:news_app/pages/Home%20page/home_page.dart';
import 'package:news_app/pages/article/article_page.dart';
import 'package:news_app/pages/profile/profile_page.dart';

class BottomNavController extends GetxController {
  RxInt index = 0.obs;

  var pages = [
    HomePage(),
    ArticlePage(),
    ProfilePage(),
  ];
}
