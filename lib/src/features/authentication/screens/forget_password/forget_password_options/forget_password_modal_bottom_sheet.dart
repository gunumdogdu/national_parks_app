import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:national_parks_app/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:national_parks_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_button_widget.dart';

import '../../../../../utils/paddings.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(CustomPaddings.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Make Selection',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Select one of the options given below to reset your password',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 30,
            ),
            ForgetPasswordButtonWidget(
              buttonIcon: Icons.mail_outline_rounded,
              title: 'E-mail',
              subtitle: 'Reset via E-mail Verification',
              onPress: () {
                Navigator.pop(context);
                Get.to(
                  () => ForgetPasswordMailScreen(),
                );
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            ForgetPasswordButtonWidget(
              buttonIcon: Icons.mobile_friendly_rounded,
              title: 'Phone No',
              subtitle: 'Reset via Phone Verification',
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
