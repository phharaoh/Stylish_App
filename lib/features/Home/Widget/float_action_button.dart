import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:stylish_app/core/styles/colors.dart';

class FloatActionButt extends StatelessWidget {
  const FloatActionButt({super.key, required this.onPress});

  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
      onPressed: onPress,
      backgroundColor: AppColors.primary,
      child: SvgPicture.asset('lib/core/assets/images/Bag.svg'),
    );
  }
}
