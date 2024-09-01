import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:news_app/model/news_models.dart';

class NewsDetails extends StatelessWidget {
  final Article news;
  const NewsDetails({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios_new),
                          Text("Back"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 300,
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          news.urlToImage ??
                              "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/08/29/sachin-tendulkar-11705308896_1724899860.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                news.title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    "2 Days ago",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Text(
                    news.author,
                    style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                news.description ?? "No description",
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.secondaryContainer,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
