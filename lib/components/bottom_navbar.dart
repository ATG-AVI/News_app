import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/bottom_nav_controller.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: 200,
          height: 70,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(100)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    controller.index.value = 0;
                  },
                  child: Obx(
                    () => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceInOut,
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: controller.index.value == 0
                              ? Theme.of(context).colorScheme.primary
                              : null,
                          borderRadius: BorderRadius.circular(200)),
                      child: Center(
                        child: Icon(
                          Icons.home,
                          size: 25,
                          color: controller.index.value == 0
                              ? Theme.of(context).colorScheme.onBackground
                              : Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    controller.index.value = 1;
                  },
                  child: Obx(
                    () => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceInOut,
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: controller.index.value == 1
                              ? Theme.of(context).colorScheme.primary
                              : null,
                          borderRadius: BorderRadius.circular(200)),
                      child: Center(
                        child: Icon(
                          Icons.book,
                          size: 25,
                          color: controller.index.value == 1
                              ? Theme.of(context).colorScheme.onBackground
                              : Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    controller.index.value = 2;
                  },
                  child: Obx(
                    () => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceInOut,
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: controller.index.value == 2
                              ? Theme.of(context).colorScheme.primary
                              : null,
                          borderRadius: BorderRadius.circular(200)),
                      child: Center(
                        child: Icon(
                          Icons.settings,
                          size: 25,
                          color: controller.index.value == 2
                              ? Theme.of(context).colorScheme.onBackground
                              : Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
