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
  static const TextStyle textCurvButtonStyle = TextStyle(
    fontSize: 15,
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
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle username = TextStyle(
    color: AppColors.primary,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle choicetxt = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle appbarTitle = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle searchText = TextStyle(
    color:Color(0xFFBBBBBB) ,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle allFeature = TextStyle(
    color:Colors.black ,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
}
