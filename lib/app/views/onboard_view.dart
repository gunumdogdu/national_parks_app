import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:national_parks_app/app/constants/locales/string_constants.dart';
import 'package:national_parks_app/app/constants/themes/color_constants.dart';
import 'package:national_parks_app/app/utils/customvars.dart';
import 'package:national_parks_app/app/utils/paddings.dart';
import 'package:national_parks_app/app/utils/strings.dart';
import 'package:national_parks_app/app/views/dummy.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: CustomPaddings.paddingMedVer),
          child: Column(
            children: [
              const Spacer(
                flex: CustomVars.flexOne,
              ),
              Image.asset(
                CustomStrings.yellowStoneLogo,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: CustomPaddings.paddingXSmallHor,
              ),
              Text(
                CustomText.displayWelcomeText,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: ColorConstants.verydarkGreen,
                    fontWeight: FontWeight.bold,
                    fontSize: 44.0),
              ),
              const SizedBox(
                height: CustomPaddings.paddingXSmallHor,
              ),
              Text(
                CustomText.displayInfoText,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const Spacer(
                flex: CustomVars.flexThree,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DummyView1(),
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
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: ColorConstants.pureWhite,
                        fontSize: CustomVars.fontSize16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
