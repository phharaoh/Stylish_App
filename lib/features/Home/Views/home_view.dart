import '../Widget/item_card.dart';
import '../Widget/circleAvtar.dart';
import 'package:flutter/material.dart';
import '../Widget/float_action_button.dart';
import 'package:stylish_app/core/styles/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../core/Utilz/Helper/my_navigator.dart';
import 'package:stylish_app/core/styles/text_styles.dart';
import 'package:stylish_app/features/Home/Views/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      MyNavigator.goTo(
                          context: context, screen: const SearchView());
                    },
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: AppColors.white,
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: AppColors.onSearch,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Search any Product..',
                            style: TextStyles.searchText,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'All featured',
                  style: TextStyles.allFeature,
                ),
                const SizedBox(
                  height: 10,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                const SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * .25,
                    enlargeCenterPage: true,
                    autoPlay: true,
                  ),
                  items: [
                    'lib/core/assets/images/homeoffer.png',
                  ].map((imagePath) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Recommended',
                  style: TextStyles.allFeature,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ItemContainer(),
                          ItemContainer(),
                        ],
                      ),
                      Row(
                        children: [
                          ItemContainer(),
                          ItemContainer(),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatActionButt(
          onPress: () {},
        ),
      ),
    );
  }
}
