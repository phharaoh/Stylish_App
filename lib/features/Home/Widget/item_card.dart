import 'package:flutter/material.dart';
import '../../../core/styles/colors.dart';
import '../../../core/Utilz/Helper/my_navigator.dart';
import 'package:stylish_app/features/Home/Views/product_view.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        MyNavigator.goTo(context: context, screen: const ProductView());
      },
      child: Card(
        color: AppColors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        elevation: 2,
        shadowColor: Colors.black54,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                'lib/core/assets/images/item.png',
                fit: BoxFit.cover,
              ),
              const Text(
                'Mens Starry',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const Text(
                'Mens Starry Sky Printed Shirt\n100% Cotton Fabric',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              ),
              const Text(
                '₹399',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              Image.asset(
                'lib/core/assets/images/stars.png',
              )
            ],
          ),
        ),
      ),
    );
  }
}
