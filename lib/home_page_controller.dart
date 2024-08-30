import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/components/bottom_navbar.dart';
import 'package:news_app/controller/bottom_nav_controller.dart';

class HomePageController extends StatelessWidget {
  const HomePageController({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return Scaffold(
      floatingActionButton: BottomNavbar(),
      body: Obx(
        () => controller.pages[controller.index.value],
      ),
    );
  }
}
