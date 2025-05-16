import 'package:flutter/material.dart';
import '../../../core/styles/colors.dart';

class IconsButt extends StatelessWidget {
  const IconsButt(
      {super.key,
      required this.onpress,
      required this.color,
      required this.icon});

  final void Function() onpress;
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onpress,
        style: ButtonStyle(
            shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
            backgroundColor: WidgetStatePropertyAll(color)),
        child: Icon(icon, color: AppColors.white),
      ),
    );
  }
}
