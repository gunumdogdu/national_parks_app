import 'package:flutter/material.dart';
import 'package:national_parks_app/src/features/authentication/screens/signup/widgets/signup_form_field_widget.dart';
import 'package:national_parks_app/src/locales/string_constants.dart';
import 'package:national_parks_app/src/utils/asset_paths.dart';
import 'package:national_parks_app/src/utils/paddings.dart';

import '../../../../common_widgets/form/form_header_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(CustomPaddings.paddingMedium),
          child: Column(
            children: [
              const FormHeaderWidget(
                image: AssetPaths.yellowStoneLogo,
                title: CustomText.signupTitle,
                subtitle: CustomText.signupSubtitle,
                heightBetween: 30.0,
              ),
              const SignupFormWidget(),
              Column(
                children: [
                  const Text('OR'),
                  const SizedBox(
                    height: CustomPaddings.paddingXSmall,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage(AssetPaths.googleLogoImage),
                        width: 20.0,
                      ),
                      label: const Text('Sign In with Google'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: 'Already have an account ? ',
                            style: Theme.of(context).textTheme.bodyText1),
                        TextSpan(
                            text: 'Login'.toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                      ]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
