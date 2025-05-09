import 'package:flutter/material.dart';

import '../../../../../core/styles/colors.dart';
import '../../../data/Splash_Data_Model/onboarding_data_model.dart';



class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            onboardingDataList[index].image,
            width: MediaQuery.of(context).size.width * 0.733,
            height: MediaQuery.of(context).size.height * 0.433,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 20),
          Text(
            onboardingDataList[index].title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          // const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Text(
              onboardingDataList[index].description,
              style:const TextStyle(
                  fontSize: 16,
                  color: AppColors.onSecondaryText,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ]);
  }
}
