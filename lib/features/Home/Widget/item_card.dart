import 'package:flutter/material.dart';
import '../../../core/styles/colors.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      elevation: 2,
      shadowColor: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .23,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                'lib/core/assets/images/item.png',
                fit: BoxFit.cover,
              ),
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
    );
  }
}
