import '../Widget/item_card.dart';
import 'package:flutter/material.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favourite'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      ItemCard(),
                      ItemCard(),
                    ],
                  ),
                  Row(
                    children: [
                      ItemCard(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
