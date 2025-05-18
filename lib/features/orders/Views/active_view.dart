import 'package:flutter/material.dart';
import '../../../core/styles/colors.dart';

class ActiveView extends StatelessWidget {
  const ActiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'lib/core/assets/images/empty.png',
              width: MediaQuery.of(context).size.width * 0.373,
              height: MediaQuery.of(context).size.height * 0.167,
            ),
            const Text('You don\'t have any\nactive orders at this\ntime',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                )),
          ],
        ),
      ),
    );
  }
}
  // 'lib/core/assets/images/empty.svg'