import 'package:flutter/material.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(10),
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
            SizedBox(
              height: 20,
            ),
            Row(
              children: [TrendingCard()],
            )
          ],
        ),
      ),
    );
  }
}
