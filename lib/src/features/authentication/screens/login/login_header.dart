import 'package:flutter/material.dart';
import 'package:national_parks_app/src/locales/string_constants.dart';
import 'package:national_parks_app/src/utils/asset_paths.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image(
            image: const AssetImage(AssetPaths.yellowStoneLogo),
            height: 200,
          ),
        ),
        Text(CustomText.welcomePageTitle,
            style: Theme.of(context).textTheme.displaySmall),
        Text(CustomText.welcomePageSubText,
            style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
