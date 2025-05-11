import 'package:flutter/material.dart';
import 'package:stylish_app/core/styles/colors.dart';
import '../../../../core/styles/formFeild_style.dart';
import 'package:stylish_app/core/styles/text_styles.dart';
import '../../../../core/Utilz/Widgets/custom_elevatedButton.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome\nBack!',
              style: TextStyles.welcomeBack,
            ),
            const SizedBox(
              height: 45,
            ),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.textFieldBackground,
                border: FormFieldStyle.outlineInputBorder,
                hintText: 'Email',
                hintStyle: TextStyles.hintTextStyle,
                prefixIcon: const Icon(Icons.email_rounded,
                    color: AppColors.textFieldIcon),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.textFieldBackground,
                border: FormFieldStyle.outlineInputBorder,
                hintText: 'Password',
                hintStyle: TextStyles.hintTextStyle,
                suffixIcon: const Icon(Icons.visibility_outlined,
                    color: AppColors.textFieldIcon),
                prefixIcon: const Icon(Icons.lock_rounded,
                    color: AppColors.textFieldIcon),
              ),
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
    );
  }
}
