import 'package:flutter/material.dart';
import 'package:national_parks_app/src/utils/paddings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: CustomPaddings.paddingMedium),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
                image: AssetImage('assets/png/google-logo.jpg'), width: 20.0),
            onPressed: () {},
            label: const Text('SignIn with Google'),
          ),
        ),
        const SizedBox(height: CustomPaddings.paddingMedium),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
                text: 'Dont you have an account ?',
                style: Theme.of(context).textTheme.bodyText1,
                children: const [
                  TextSpan(
                      text: 'Sign Up', style: TextStyle(color: Colors.blue))
                ]),
          ),
        ),
      ],
    );
  }
}
