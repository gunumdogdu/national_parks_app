import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:national_parks_app/src/common_widgets/buttons/custom_main_button.dart';
import 'package:national_parks_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:national_parks_app/src/utils/paddings.dart';

import '../../../../../common_widgets/form/form_header_widget.dart';
import '../../../../../locales/string_constants.dart';
import '../../../../../utils/asset_paths.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(
              CustomPaddings.paddingMedium,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: CustomPaddings.paddingMedium * 4,
                ),
                const FormHeaderWidget(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  image: AssetPaths.confusedImage,
                  title: 'Forget Password',
                  subtitle:
                      'Select one of the options given below to reset your password',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: CustomPaddings.paddingMedium,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text('E-mail'),
                        hintText: 'E-mail',
                        prefixIcon: Icon(Icons.mail_outline_rounded),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 100.0,
                      child: CustomMainButton(
                        text: 'Next',
                        onPress: () {
                          Get.to(
                            () => OTPScreen(),
                          );
                        },
                      ),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
