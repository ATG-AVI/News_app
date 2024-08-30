import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/config/Theme.dart';
import 'package:news_app/controller/bottom_nav_controller.dart';
import 'package:news_app/home_page_controller.dart';
import 'package:news_app/pages/Home%20page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: darkTheme,
      themeMode: ThemeMode.system,
      darkTheme: darkTheme,
      home: HomePageController(),
    );
  }
}
