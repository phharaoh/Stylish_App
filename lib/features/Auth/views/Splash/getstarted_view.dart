import 'package:flutter/material.dart';

class GetStartView extends StatelessWidget {
  const GetStartView({super.key}); // Use Key? for null safety

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[
            Container(
              decoration:const BoxDecoration(
                image: DecorationImage(image:AssetImage(
                  'lib/core/assets/images/getStarted.png', // Ensure this path is correct
                ),fit: BoxFit.fill )
              ),
            ),
             ] ),
    
    );
  }
}
