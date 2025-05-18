import '../Widget/item_card.dart';
import 'package:flutter/material.dart';
import '../../../core/styles/text_styles.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Favourite',
          style: TextStyles.appbarTitle,
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
