import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:national_parks_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:national_parks_app/src/utils/themes/color_constants.dart';

import '../../../../locales/string_constants.dart';
import '../../../../utils/asset_paths.dart';
import '../../../../utils/customvars.dart';
import '../../../../utils/paddings.dart';
import '../../../../widgets/custom_main_button.dart';

class WelcomePageView extends StatelessWidget {
  const WelcomePageView({super.key});

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
                AssetPaths.welcomePageImage,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                height: CustomPaddings.paddingXSmallHor,
              ),
              Text(
                'We love national parks!',
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
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  text: 'Log In'),
              const SizedBox(
                height: CustomPaddings.paddingXSmallHor,
              ),
              CustomMainButton(onPress: () {}, text: 'Sign Up'),
              const SizedBox(
                height: CustomPaddings.paddingXSmallHor,
              ),
              Text(
                'Do you have an account ?',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: ColorConstants.verydarkGreen.withOpacity(0.4)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
