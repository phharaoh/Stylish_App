import 'package:flutter/material.dart';
import '../../../core/styles/colors.dart';

class OperatedButton extends StatelessWidget {
  const OperatedButton(
      {super.key, this.onTap, required this.color, required this.icon});
  final void Function()? onTap;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 7,right:7),
        width: 24,
        height: 24,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(4)),
        child: Icon(
          icon,
          color: AppColors.white,
        ),
      ),
    );
  }
}
