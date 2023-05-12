
import 'package:flutter/material.dart';
import 'package:national_parks_app/src/utils/customvars.dart';
import 'package:national_parks_app/src/utils/paddings.dart';
import 'package:national_parks_app/app/views/home_view.dart';

import '../../locales/string_constants.dart';
import '../../utils/themes/color_constants.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
    required this.text,
    required this.onPress,
  });
  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConstants.verydarkGreen,
        elevation: CustomVars.fixedElevation,
        minimumSize: const Size(double.infinity, double.minPositive),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              CustomVars.buttonRadius,
            ),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: CustomPaddings.paddingSmallHor),
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ),
    );
  }
}
