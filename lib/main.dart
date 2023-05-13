import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:national_parks_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:national_parks_app/src/features/authentication/screens/welcome/welcome_page_view.dart';
import 'package:national_parks_app/src/utils/themes/light_theme.dart';

import 'package:timezone/data/latest.dart' as tz;

void main() {
  tz.initializeTimeZones();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: LightTheme.data,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
      themeMode: ThemeMode.system,
      darkTheme: LightTheme.data,
      home: const WelcomePageView(),
    );
  }
}
