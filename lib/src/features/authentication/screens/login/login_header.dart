import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            image: const AssetImage('assets/png/welcome-page.png'),
            height: size.height * 0.2),
        Text('Welcome back', style: Theme.of(context).textTheme.displaySmall),
        Text('nothing to see here yet',
            style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
