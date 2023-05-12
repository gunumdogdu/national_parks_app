import 'package:flutter/material.dart';
import 'package:national_parks_app/src/locales/string_constants.dart';
import 'package:national_parks_app/src/utils/paddings.dart';
import 'package:national_parks_app/src/utils/themes/color_constants.dart';

import '../../../../common_widgets/buttons/custom_main_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: CustomPaddings.paddingSmallVer),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: 'E-mail',
                  labelStyle: TextStyle(fontSize: 16),
                  hintText: 'E-mail',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: CustomPaddings.paddingSmall),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: 16),
                hintText: 'Password',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: CustomPaddings.paddingSmallVer),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  CustomText.forgetPasswordText,
                  style:
                      TextStyle(fontSize: 14, color: ColorConstants.darkGreen),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: CustomMainButton(
                onPress: () {},
                text: 'Login'.toUpperCase(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
