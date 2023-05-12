import 'package:flutter/material.dart';
import 'package:national_parks_app/src/utils/themes/color_constants.dart';

class TextFormFieldTheme {
  TextFormFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: ColorConstants.darkGreen,
    floatingLabelStyle: TextStyle(color: ColorConstants.darkGreen),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorConstants.darkGreen),
    ),
  );
}
