import 'package:flutter/material.dart';
import 'package:stylish_app/core/styles/colors.dart';

abstract class FormFieldStyle {
  static OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: AppColors.textFieldBackground),
  );
}
