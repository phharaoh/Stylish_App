import 'setting_view.dart';
import 'myprofile_view.dart';
import 'package:flutter/material.dart';
import '../../orders/Views/order_route.dart';
import '../../Home/Views/favourite_view.dart';
import '../../../core/styles/text_styles.dart';
import '../Widget/profile_choices_widget.dart';
import 'package:stylish_app/core/styles/colors.dart';
import '../../Auth/views/Splash/getstarted_view.dart';
import '../../../core/Utilz/Localization/en_keys.dart';
import 'package:stylish_app/features/Home/Widget/float_action_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyles.appbarTitle,
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 23, right: 23),
        child: Column(
          children: [
            const CircleAvatar(
              backgroundImage:
                  AssetImage('lib/core/assets/images/Profile PNG.png'),
              radius: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(EnKeys.userFullProfile, style: TextStyles.username),
            const SizedBox(
              height: 10,
            ),
            ProChoices(
                txt: EnKeys.myprofile,
                imagePath: 'lib/core/assets/images/Profile.svg',
                screen: const MyProView(),
                context: context),
            ProChoices(
                txt: EnKeys.myorder,
                imagePath: 'lib/core/assets/images/orderIcon.svg',
                screen: const OrderRoute(),
                context: context),
            ProChoices(
                txt: EnKeys.myfavortes,
                imagePath: 'lib/core/assets/images/Heart - Iconly Pro.svg',
                screen: const FavouriteView(),
                context: context),
            ProChoices(
                txt: EnKeys.setting,
                imagePath: 'lib/core/assets/images/Setting - Iconly Pro.svg',
                screen: const SettingView(),
                context: context),
            const Divider(
              color: AppColors.primary,
            ),
            ProChoices(
                txt: EnKeys.logout,
                imagePath: 'lib/core/assets/images/Logout - Iconly Pro.svg',
                screen: const GetStartView(),
                context: context),
          ],
        ),
      )),
      floatingActionButton: FloatActionButt(onPress: () {}),
    ));
  }
}
