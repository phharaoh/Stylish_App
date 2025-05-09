import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish_app/core/styles/colors.dart';
import 'package:stylish_app/features/Auth/data/Splash_Data_Model/onboarding_data_model.dart';
import 'package:stylish_app/features/Auth/views/Splash/OnBoarding_Widgets/onboarding_body.dart';
import 'package:stylish_app/features/Auth/views/Splash/OnBoarding_Widgets/onboarding_move_text.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final _controller = PageController(viewportFraction: 1, keepPage: true);

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButton(
                onPressed: () {
                  _controller.jumpToPage(onboardingDataList.length - 1);
                  setState(() {
                    currentPage = 2;
                  });
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: AppColors.onPrimaryText),
                )),
          )
        ],
      ),
      body: Center(
        child: SizedBox(
          height: 650,
          width: double.infinity,
          child: PageView.builder(
            itemCount: onboardingDataList.length,
            controller: _controller,
            onPageChanged: (int index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingBody(
                index: index,
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 27),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                width: 125,
                child: currentPage == 0
                    ?const OnboardingMoveText(
                  text: " ",
                )
                    : OnboardingMoveText(
                  text: "        Prev",
                  prev: true,
                  onPressed: _jumgToPrevPage,
                )),
            Container(
              width: 125,
              margin: const EdgeInsets.only(left: 30),
              child: SmoothPageIndicator(
                controller: _controller,
                count: onboardingDataList.length,
                effect: const WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  dotColor: Color(0x17223B33),
                  activeDotColor: Color(0xff17223B),
                  type: WormType.thin,
                ),
              ),
            ),
            SizedBox(
                width: 125,
                child: 2 != currentPage
                    ? OnboardingMoveText(
                        text: "     Next     ",
                        onPressed: _jumgToNextPage,
                      )
                    : OnboardingMoveText(
                        text: "Get Started",
                        onPressed: _getSignScreen,
                      )),
          ],
        ),
      ),
    );
  }

  _getSignScreen() {
    Navigator.pushReplacementNamed(context, '/getStarted');
  }

  _jumgToNextPage() {
    _controller.jumpToPage(currentPage != onboardingDataList.length
        ? currentPage + 1
        : currentPage);
  }

  _jumgToPrevPage() {
    _controller.jumpToPage(currentPage < onboardingDataList.length
        ? currentPage - 1
        : currentPage = 2);
  }
}
