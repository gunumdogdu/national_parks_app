import 'package:flutter/material.dart';
import 'package:national_parks_app/src/utils/themes/light_theme.dart';

import 'package:timezone/data/latest.dart' as tz;
import 'app/views/onboard_view.dart';
import 'src/features/authentication/screens/welcome/welcome_page_view.dart';

void main() {
  tz.initializeTimeZones();
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
      themeMode: ThemeMode.system,
      darkTheme: LightTheme.data,
      home: const WelcomePageView(),
    );
  }
}
