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
                child: Row(
                  children: [
                    TrendingCard(
                      Ontap: () {
                        Get.to(NewsDetails());
                      },
                      imageUrl:
                          "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/20/317_1705754513.jpg",
                      title:
                          "3400 साल पहले से है रामकथा, वेदों में राम नाम:ब्रह्मा के वरदान और नारद के शाप सहित राम अवतार के 4 कारण",
                      author: "Aviral Sharma",
                      tag: "Trending no 1",
                      time: "2 days ago",
                    ),
                    TrendingCard(
                      Ontap: () {
                        Get.to(NewsDetails());
                      },
                      imageUrl:
                          "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/08/29/sachin-tendulkar-11705308896_1724899860.jpg",
                      title:
                          "इसमें कहा- गिल का नेक्स्ट कोहली बनना कठिन; खुद को और सचिन को लीजेंड बताया",
                      author: "Aviral Sharma",
                      tag: "Trending no 2",
                      time: "2 days ago",
                    ),
                    TrendingCard(
                      Ontap: () {
                        Get.to(NewsDetails());
                      },
                      imageUrl:
                          "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/08/28/2024-05-18t10175358117160076801720792301_1724846504.jpg",
                      title:
                          "Amazon में वर्चुअल कस्टमर सपोर्ट एसोसिएट्स की वैकेंसी, 12वीं पास कैंडिडेट्स करें अप्लाई, वर्क फ्रॉम होम जॉब",
                      author: "Aviral Sharma",
                      tag: "Trending no 3",
                      time: "2 days ago",
                    )
                  ],
                ),
              ),
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
              Column(
                children: [
                  NewsTile(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/20/317_1705754513.jpg",
                    title:
                        "3400 साल पहले से है रामकथा, वेदों में राम नाम:ब्रह्मा के वरदान और नारद के शाप सहित राम अवतार के 4 कारण",
                    author: "Aviral Sharma",
                    time: "2 days ago",
                  ),
                  NewsTile(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/08/29/sachin-tendulkar-11705308896_1724899860.jpg",
                    title:
                        "3400 साल पहले से है रामकथा, वेदों में राम नाम:ब्रह्मा के वरदान और नारद के शाप सहित राम अवतार के 4 कारण",
                    author: "Aviral Sharma",
                    time: "2 days ago",
                  ),
                  NewsTile(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/20/317_1705754513.jpg",
                    title:
                        "3400 साल पहले से है रामकथा, वेदों में राम नाम:ब्रह्मा के वरदान और नारद के शाप सहित राम अवतार के 4 कारण",
                    author: "Aviral Sharma",
                    time: "2 days ago",
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
