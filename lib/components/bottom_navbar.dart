import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
