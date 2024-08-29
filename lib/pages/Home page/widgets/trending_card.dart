import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      // height: 300,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                  "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/01/20/317_1705754513.jpg"),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trending no 1",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                "2 Days ago",
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  "3400 साल पहले से है रामकथा, वेदों में राम नाम:ब्रह्मा के वरदान और नारद के शाप सहित राम अवतार के 4 कारण",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 10),
              CircleAvatar(
                radius: 15,
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(width: 10),
              Text("Aviral Sharma")
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
