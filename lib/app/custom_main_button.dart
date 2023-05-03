import 'package:flutter/material.dart';
import 'package:national_parks_app/app/utils/customvars.dart';
import 'package:national_parks_app/app/utils/paddings.dart';
import 'package:national_parks_app/app/views/home_view.dart';

import 'constants/locales/string_constants.dart';
import 'constants/themes/color_constants.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HomeView(),
          ),
        );
      },
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
          CustomText.displayButtonText,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ),
    );
  }
}
