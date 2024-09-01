import 'package:flutter/material.dart';
import 'package:news_app/pages/article/widgets/search_widget.dart';

import '../Home page/widgets/news_tile.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SearchWidget(),
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
                    onTap: () {},
                  ),
                  NewsTile(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/08/29/sachin-tendulkar-11705308896_1724899860.jpg",
                    title:
                        "3400 साल पहले से है रामकथा, वेदों में राम नाम:ब्रह्मा के वरदान और नारद के शाप सहित राम अवतार के 4 कारण",
                    author: "Aviral Sharma",
                    time: "2 days ago",
                    onTap: () {},
                  ),
                  NewsTile(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/20/317_1705754513.jpg",
                    title:
                        "3400 साल पहले से है रामकथा, वेदों में राम नाम:ब्रह्मा के वरदान और नारद के शाप सहित राम अवतार के 4 कारण",
                    author: "Aviral Sharma",
                    time: "2 days ago",
                    onTap: () {},
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
