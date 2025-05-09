class OnboardingData {
  final String image;
  final String title;
  final String description;

  OnboardingData({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingData> onboardingDataList = [
  OnboardingData(
    image: 'lib/core/assets/images/onboarding1.png',
    title: 'Choose Products',
    description:
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
  ),
  OnboardingData(
    image: 'lib/core/assets/images/onboarding2.png',
    title: 'Make Payment',
    description:
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
  ),
  OnboardingData(
    image: 'lib/core/assets/images/onboarding3.png',
    title: 'Get Your Order',
    description:
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
  ),
];
