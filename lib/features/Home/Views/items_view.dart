import '../Widget/item_card.dart';
import '../Widget/circleAvtar.dart';
import 'package:flutter/material.dart';
import '../../../core/styles/text_styles.dart';
import 'package:stylish_app/features/Home/Widget/float_action_button.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                // Image.asset(
                //     'lib/core/assets/images/logoipsum-255 1.png'),

                SizedBox(
                  height: 20,
                ),
                Text(
                  'All featured',
                  style: TextStyles.allFeature,
                ),
                SizedBox(
                  height: 20,
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //small avatar
                    children: [
                      Circleavtar(
                        imagePath:
                            'lib/core/assets/images/unsplash__3Q3tsJ01nc.png',
                        label: 'Fashion',
                      ),
                      Circleavtar(
                        imagePath:
                            'lib/core/assets/images/unsplash_GCDjllzoKLo.png',
                        label: 'Kids',
                      ),
                      Circleavtar(
                        imagePath:
                            'lib/core/assets/images/unsplash_xPJYL0l5Ii8.png',
                        label: 'Beuaty',
                      ),
                      Circleavtar(
                        imagePath:
                            'lib/core/assets/images/unsplash_OYYE4g-I5ZQ.png',
                        label: 'Mens',
                      ),
                      Circleavtar(
                        imagePath: 'lib/core/assets/images/Ellipse 4.png',
                        label: 'Womens',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Products',
                  style: TextStyles.allFeature,
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    //cards
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
                          ItemCard(),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatActionButt(onPress: () {}),
      ),
    );
  }
}
