import 'package:flutter/material.dart';
import 'package:national_parks_app/app/utils/strings.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        CustomStrings.loadingGif,
        height: double.infinity,
        fit: BoxFit.fitHeight,
        scale: 0.8,
      ),
    );
  }
}
