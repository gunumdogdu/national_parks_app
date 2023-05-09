// Light Theme:

//     #F2F2F2 - a very light gray that will provide a clean and simple look, paired with accents of #3CB371 - a light green that will connect with nature and the parks.
//     #FFFFFF - a pure white background paired with accents of #7FFF00 - a bright green that will give a refreshing feel and match with the greenery in many national parks.
//     #F5F5F5 - a slightly off-white gray paired with accents of #32CD32 - a muted green that will provide a subtle and calming look.

// Dark Theme:

//     #0F2D21 - a deep greenish-black that will bring a connection with the forest, paired with accents of #98FB98 - a light green that will provide a fresh and lively look.
//     #292929 - a medium-dark gray paired with accents of #008000 - a dark green that will provide a strong and bold contrast.
//     #1C1C1C - a deep blackish-gray paired with accents of #006400 - a deep green that will give a classic and natural look.

import 'package:flutter/material.dart';

@immutable
class ColorConstants {
  const ColorConstants._();
  static const Color lightGray = Color(0xffF2F2F2); //Primary -light
  static const Color pureWhite = Color(0xffFFFFFF); //BG -light
  static const Color lightGreen = Color(0xff32CD32); //Secondary-light-active
  static const Color lightGreenFaded = Color(0xff3CB371); //Secondary -light
  static const Color verydarkGreen = Color(0xff0F2D21); //Primary-dark
  static const Color mediumGray = Color(0xff292929); //BG -dark
  static const Color darkGreen = Color(0xff008000); //Secondary-dark
}
