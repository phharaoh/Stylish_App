import 'colors.dart';
import 'package:flutter/material.dart';
import 'package:stylish_app/core/styles/font_weight.dart';

abstract class TextStyles {
  static const TextStyle authTextStyle = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const TextStyle smallaAuthTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xffF2F2F2),
  );
  static const TextStyle textButtonStyle = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const TextStyle hintTextStyle = TextStyle(
      color: AppColors.textFieldLabelText,
      fontSize: 12,
      fontWeight: FontWeight.w500);

  static const TextStyle welcomeBack = TextStyle(
    fontFamily: FontWeightStyles.extraBold,
    color: Colors.black,
    fontSize: 40,
    fontWeight: FontWeight.w900,
  );
  static const TextStyle descriptionAuth = TextStyle(
    fontFamily: FontWeightStyles.extraBold,
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}
