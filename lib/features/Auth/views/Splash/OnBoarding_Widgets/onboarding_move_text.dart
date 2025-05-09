import 'package:flutter/material.dart';
import '../../../../../core/styles/colors.dart';


class OnboardingMoveText extends StatefulWidget {
  const OnboardingMoveText({
    super.key,
    required this.text, this.onPressed, this.prev,
  });
  final void Function()? onPressed;
  final String text;
  final bool? prev;
  @override
  State<OnboardingMoveText> createState() => _OnboardingMoveTextState();
}


class _OnboardingMoveTextState extends State<OnboardingMoveText> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(widget.onPressed!=null){
          widget.onPressed!();
        }

      },
      child: Text(
        widget.text,
        style: TextStyle(
             color: widget.prev ==true ? AppColors.onSecondaryText : AppColors.primary,
            fontSize: 18,
            fontWeight: FontWeight.w800),
      ),
    );
  }
}
