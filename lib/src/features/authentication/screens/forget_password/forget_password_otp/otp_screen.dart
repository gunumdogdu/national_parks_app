import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:national_parks_app/src/common_widgets/buttons/custom_main_button.dart';
import 'package:national_parks_app/src/utils/paddings.dart';
import 'package:national_parks_app/src/utils/themes/color_constants.dart';

import '../../../../../locales/string_constants.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(
          CustomPaddings.paddingMedium,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CO\nDE',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80.0),
            ),
            Text(
              'Verification'.toUpperCase(),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              '${CustomText.otpText} support@gunumdogdu.com',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            OtpTextField(
              numberOfFields: 6,
              fillColor: ColorConstants.darkGreen,
              filled: true,
              onSubmit: (code) {
                print('OTP is => $code');
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            CustomMainButton(
              text: 'Next',
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}
