import 'package:flutter/material.dart';
import 'package:national_parks_app/app/constants/themes/text_styles.dart';
import 'package:national_parks_app/app/views/home_view.dart';

import 'app/views/onboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: LightTheme.data,
      home: OnboardingView(),
    );
  }
}
