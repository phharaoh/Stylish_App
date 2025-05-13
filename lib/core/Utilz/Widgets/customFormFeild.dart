import '../../styles/colors.dart';
import 'package:flutter/material.dart';
import '../../styles/text_styles.dart';
import '../../styles/formfeild_style.dart';

class Customformfeild extends StatelessWidget {
  const Customformfeild(
      {super.key,
      required this.hintText,
      this.validator,
      this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.visiable});
  final String hintText;
  final bool? visiable;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: TextFormField(
          controller: controller,
          obscureText: visiable ?? false,
          validator: validator,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.textFieldBackground,
            border: FormFieldStyle.outlineInputBorder,
            hintText: hintText,
            hintStyle: TextStyles.hintTextStyle,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    );
  }
}
