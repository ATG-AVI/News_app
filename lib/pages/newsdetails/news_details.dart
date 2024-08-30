import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key});

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
                          "https://www.hindustantimes.com/ht-img/img/2024/08/30/550x309/PTI08-30-2024-000183B-0_1725027238099_1725027273400.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "‘Nothing but another act…’: Uddhav's Sena slams PM Modi's apology to Shivaji Maharaj on statue collapse",
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
                    "Aviral Sharma",
                    style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "PM Modi on Friday apologised for the collapse of Chhattrapati Shivaji Maharaj statue during his visit to Maharashtra.Shiv Sena (UBT) hit out at Prime Minister Narendra Modi for his apology for the collapse of the Chhatrapati Shivaji statue in Maharashtra's Sindhudurg district earlier this week. Shiv Sena (UBT) leader Priyanka Chaturvedi attacked PM Modi over the statue collapse, saying that it was hurriedly made for the prime minister's “prachaar” before the elections. ",
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
