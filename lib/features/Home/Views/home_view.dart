import '../Widget/item_card.dart';
import '../Widget/circleAvtar.dart';
import 'package:flutter/material.dart';
import 'package:stylish_app/core/styles/colors.dart';
import 'package:stylish_app/core/styles/text_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset('lib/core/assets/images/logoipsum-255 1.png'),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
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
              // const Text(
              //   'All Feature',
              //   style: TextStyles.allFeature,
              // ),
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
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .25,
                  child: Image.asset(
                    'lib/core/assets/images/homeoffer.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Column(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
