import 'package:flutter/material.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../../core/Utilz/Widgets/custom_elevatedButton.dart';
import 'package:stylish_app/core/Utilz/Widgets/customFormFeild.dart';

class SignUpView extends StatelessWidget {
   const SignUpView({super.key});
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
                'Create an\naccount',
                style: TextStyles.welcomeBack,
              ),
              const SizedBox(
                height: 18,
              ),
              const Customformfeild(
                prefixIcon: Icon(
                  Icons.person,
                  color: AppColors.textFieldIcon,
                ),
                hintText: 'Full Name',
              ),
              const Customformfeild(
                prefixIcon: Icon(
                  Icons.phone,
                  color: AppColors.textFieldIcon,
                ),
                hintText: 'Phone',
              ),
              const Customformfeild(
                prefixIcon: Icon(
                  Icons.email_rounded,
                  color: AppColors.textFieldIcon,
                ),
                hintText: 'Email',
              ),
              const Customformfeild(
                prefixIcon: Icon(
                  Icons.lock,
                  color: AppColors.textFieldIcon,
                ),
                suffixIcon: Icon(Icons.visibility_outlined),
                hintText: 'Password',
              ),
              const Customformfeild(
                prefixIcon: Icon(
                  Icons.lock,
                  color: AppColors.textFieldIcon,
                ),
                suffixIcon: Icon(Icons.visibility_outlined),
                hintText: 'Confirm Password',
              ),
               const Text(
                'By clicking the Register button, you agree\nto the public offer',
                style: TextStyles.descriptionAuth,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomElvButt(
                onPressed: () {},
                text: "Create Account",
              )
            ],
          ),
        ),
      ),
    );
  }
}

