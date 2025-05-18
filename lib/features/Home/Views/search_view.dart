import 'package:flutter/material.dart';
import '../../../core/styles/colors.dart';
import '../../../core/styles/text_styles.dart';
import 'package:stylish_app/features/Home/Widget/item_card.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search'),
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 17.0, right: 17.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
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
              const SizedBox(
                height: 20,
              ),
              const Text(
                '2 Iteams',
                style: TextStyles.allFeature,
              ),
              const SizedBox(
                height: 20,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ItemContainer(),
                    ItemContainer(),
                  ],
                ),
              ),
            ])));
  }
}
