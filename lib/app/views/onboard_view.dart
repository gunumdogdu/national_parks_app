import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:national_parks_app/app/constants/locales/string_constants.dart';
import 'package:national_parks_app/app/constants/themes/color_constants.dart';
import 'package:national_parks_app/app/utils/customvars.dart';
import 'package:national_parks_app/app/utils/paddings.dart';

import 'package:national_parks_app/app/views/home_view.dart';

import '../custom_main_button.dart';
import '../utils/asset_paths.dart';

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
                AssetPaths.yellowStoneLogo,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: CustomPaddings.paddingXSmallHor,
              ),
              Text(
                CustomText.displayWelcomeText,
                style: Theme.of(context).textTheme.displaySmall,
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
              const CustomMainButton()
            ],
          ),
        ),
      ),
    );
  }
}
