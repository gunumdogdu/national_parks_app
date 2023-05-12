import 'package:flutter/material.dart';

import '../../../../../utils/paddings.dart';
import '../../../../../common_widgets/buttons/custom_main_button.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: CustomPaddings.paddingMedVer),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Full Name'),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(
              height: CustomPaddings.paddingXSmall,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Phone Number'),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            const SizedBox(
              height: CustomPaddings.paddingXSmall,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('E-mail'),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: CustomPaddings.paddingXSmall,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Password'),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            const SizedBox(
              height: CustomPaddings.paddingSmall,
            ),
            CustomMainButton(
              text: 'Sign Up'.toUpperCase(),
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}
