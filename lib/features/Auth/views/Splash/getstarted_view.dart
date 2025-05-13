import '../signin_view.dart';
import '../signup_view.dart';
import 'package:flutter/material.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/Utilz/Helper/myNavigator.dart';

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
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(left: 37, right: 37),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .5,
                ),
                const Text(
                  'You want Authentic, here you go!',
                  style: TextStyles.authTextStyle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Find it here, buy it now!',
                  style: TextStyles.smallaAuthTextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .71,
                  child: ElevatedButton(
                      onPressed: () {
                        MyNavigator.goTo(
                            context: context, screen: const LoginView());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyles.textButtonStyle,
                      )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .71,
                  child: ElevatedButton(
                      onPressed: () {
                        MyNavigator.goTo(
                            context: context, screen: const RegisterView());
                      },
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          color: AppColors.primary,
                          width: 2,
                        ),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary,
                        ),
                      )),
                ),
              ],
            ),
          )),
        ),
      ]),
    );
  }
}
