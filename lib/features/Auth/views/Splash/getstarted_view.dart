import 'package:flutter/material.dart';

class GetStartView extends StatelessWidget {
  const GetStartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'lib/core/assets/images/getStarted.png',
                  ),
                  fit: BoxFit.fill)),
        ),
      ]),
    );
  }
}
