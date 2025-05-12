import 'package:flutter/material.dart';
import 'package:stylish_app/core/styles/colors.dart';
import 'package:stylish_app/core/styles/text_styles.dart';
import '../../../../core/Utilz/Widgets/customFormFeild.dart';
import '../../../../core/Utilz/Widgets/custom_elevatedButton.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 26.0, right: 26),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome\nBack!',
                style: TextStyles.welcomeBack,
              ),
              const SizedBox(
                height: 18,
              ),
              const Customformfeild(
                prefixIcon: Icon(Icons.email_rounded,color: AppColors.textFieldIcon,),
                hintText: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              const Customformfeild(
                prefixIcon: Icon(Icons.lock,color: AppColors.textFieldIcon,),
                suffixIcon: Icon(Icons.visibility_outlined),
                hintText: 'Password',
              ),
              const SizedBox(
                height: 50,
              ),
              CustomElvButt(
                onPressed: () {},
                text: "Login",
              )
            ],
          ),
        ),
      ),
    );
  }
}
