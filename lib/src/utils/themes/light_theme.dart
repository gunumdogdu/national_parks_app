import 'package:flutter/material.dart';
import 'package:national_parks_app/src/utils/themes/widget_themes/text_field_theme.dart';

import '../customvars.dart';
import './color_constants.dart';

class LightTheme {
  LightTheme._();
  static const ColorScheme colorScheme = ColorScheme.light();
  static final ThemeData data = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      labelSmall: const TextStyle(
          color: ColorConstants.pureWhite,
          fontSize: CustomVars.fontSize16,
          fontWeight: FontWeight.normal),
      labelMedium: const TextStyle(
        fontSize: 15,
        color: Colors.black,
      ),
      titleLarge: const TextStyle(
          color: ColorConstants.lightGray,
          fontSize: 24,
          fontWeight: FontWeight.bold),
      headlineMedium:
          const TextStyle(color: ColorConstants.verydarkGreen, fontSize: 32.0),
      headlineLarge: TextStyle(
          color: Colors.red.shade400,
          fontSize: 20.0,
          fontWeight: FontWeight.w600),
      labelLarge: TextStyle(
          color: Colors.red.shade400,
          fontSize: 26.0,
          fontWeight: FontWeight.bold),
      displaySmall: const TextStyle(
          color: ColorConstants.verydarkGreen,
          fontWeight: FontWeight.bold,
          fontSize: 44.0),
      titleMedium: const TextStyle(
        color: ColorConstants.lightGray,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
  );
}
