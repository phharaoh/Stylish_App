import '../Widget/item_card.dart';
import 'package:flutter/material.dart';


class CancelView extends StatelessWidget {
  const CancelView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        ItemCard(),
      ],
    ));
  }
}
