import 'package:assesment/utils/colors.dart';
import 'package:flutter/material.dart';

enum AppTheme {
  Light,
  Dark,
}

final appThemeData = {
  AppTheme.Light: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    cardColor: Palette.white,
    backgroundColor: Palette.background,
    buttonColor: Colors.blue,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Palette.black,
      ),
    ),
  ),
  AppTheme.Dark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    cardColor: Palette.black,
    backgroundColor: Palette.black,
    buttonColor: Colors.white,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Palette.white,
      ),
    ),
  ),
};
