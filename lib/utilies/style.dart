import 'package:flutter/material.dart';
import 'package:sakptelloapp/utilies/custom_colors.dart';

class AppTheme {
  static final appTheme = ThemeData(
    primaryColor: kPrimaryColor,
    fontFamily: 'Cairo',
    textTheme: TextTheme(
        title: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
    )),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.green,
      height: 48.0,
    ),
  );
}
