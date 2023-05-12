import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:national_parks_app/src/locales/string_constants.dart';

import 'package:national_parks_app/src/utils/customvars.dart';
import 'package:national_parks_app/src/utils/paddings.dart';

import '../../src/utils/asset_paths.dart';
import '../../src/common_widgets/buttons/custom_main_button.dart';
import 'home_view.dart';

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
              CustomMainButton(
                onPress: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeView(),
                    ),
                  );
                },
                text: CustomText.displayButtonText,
              )
            ],
          ),
        ),
      ),
    );
  }
}
