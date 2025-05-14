import 'package:flutter/material.dart';
import '../../../core/styles/colors.dart';
import '../../../core/Utilz/Widgets/customFormFeild.dart';
import 'package:stylish_app/core/Utilz/Widgets/custom_curvedButton.dart';

class MyProView extends StatelessWidget {
  const MyProView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar:AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 26),
        child: Column(
          
          children: [
             const CircleAvatar(
              backgroundImage:
                  AssetImage('lib/core/assets/images/Profile PNG.png'),
              radius: 40,
            ),
            const SizedBox(
              height: 45,
            ),
            Customformfeild(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              prefixIcon: const Icon(
                Icons.person,
                color: AppColors.textFieldIcon,
              ),
              hintText: 'Full Name',
            ),
            Customformfeild(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
              prefixIcon: const Icon(
                Icons.phone,
                color: AppColors.textFieldIcon,
              ),
              hintText: 'Phone',
            ),
            const SizedBox(
              height: 40,
            ),
            CustomCurElvButt(
              onPressed: () {},
              text: "Create Account",
            )
          ],
        ),
      ),
    ));
  }
}
