import 'package:flutter/material.dart';
import 'package:news_app/pages/Home%20page/widgets/news_tile.dart';
import 'package:news_app/pages/Home%20page/widgets/trending_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
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
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(200)),
                    child: Center(
                      child: Icon(
                        Icons.home,
                        size: 25,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        // color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(200)),
                    child: Center(
                      child: Icon(
                        Icons.book,
                        size: 25,
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        // color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(200)),
                    child: Center(
                      child: Icon(
                        Icons.settings,
                        size: 25,
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TrendingCard(
                      imageUrl:
                          "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/20/317_1705754513.jpg",
                      title:
                          "3400 साल पहले से है रामकथा, वेदों में राम नाम:ब्रह्मा के वरदान और नारद के शाप सहित राम अवतार के 4 कारण",
                      author: "Aviral Sharma",
                      tag: "Trending no 1",
                      time: "2 days ago",
                    ),
                    TrendingCard(
                      imageUrl:
                          "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/08/29/sachin-tendulkar-11705308896_1724899860.jpg",
                      title:
                          "इसमें कहा- गिल का नेक्स्ट कोहली बनना कठिन; खुद को और सचिन को लीजेंड बताया",
                      author: "Aviral Sharma",
                      tag: "Trending no 2",
                      time: "2 days ago",
                    ),
                    TrendingCard(
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
