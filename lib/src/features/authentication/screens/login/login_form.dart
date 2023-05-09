import 'package:flutter/material.dart';
import 'package:national_parks_app/src/utils/paddings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding:
            const EdgeInsets.symmetric(vertical: CustomPaddings.paddingMedVer),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: 'E-mail',
                  hintText: 'E-mail',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: CustomPaddings.paddingMedium),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: 'Password',
                hintText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: CustomPaddings.paddingMedium),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {}, child: const Text('Forget password')),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Login'.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
