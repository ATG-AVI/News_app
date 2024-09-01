import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/components/bottom_navbar.dart';
import 'package:news_app/controller/news_controller.dart';
import 'package:news_app/pages/Home%20page/widgets/news_tile.dart';
import 'package:news_app/pages/Home%20page/widgets/trending_card.dart';
import 'package:news_app/pages/newsdetails/news_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
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
                    child: Icon(Icons.dashboard),
                  ),
                  Text(
                    "News App",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600),
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
                      child: Icon(Icons.person),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hottest News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(
                    () => Row(
                      children: newsController.trendingNewsList
                          .map(
                            (e) => TrendingCard(
                              Ontap: () {
                                Get.to(NewsDetails(
                                  news: e,
                                ));
                              },
                              imageUrl: e.urlToImage!,
                              title: e.title!,
                              author: e.author ?? "Unknown",
                              tag: "Trending no 1",
                              time: "2 days ago",
                            ),
                          )
                          .toList(),
                    ),
                  )),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News for you ",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
              SizedBox(height: 20),
              Obx(() => Column(
                      children: newsController.NewsForYou5.map(
                    (e) => NewsTile(
                      onTap: () {
                        Get.to(NewsDetails(news: e));
                      },
                      imageUrl: e.urlToImage ??
                          "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/08/29/sachin-tendulkar-11705308896_1724899860.jpg",
                      title: e.title!,
                      author: e.author! ?? "Aviral",
                      time: "now",
                    ),
                  ).toList())),
            ],
          ),
        ),
      ),
    );
  }
}
