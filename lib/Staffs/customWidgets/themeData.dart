import 'package:flutter/material.dart';

const Color backgroundColorLight = Color(0xffD6D6D6);
const Color baseTextColorLight = Color(0xFF000000);
const Color baseTextColorDark = Color(0xFFFFFFFF);
const Color backgroundColorDark = Color(0xff232323);
const Color baseTextColor = Color(0xFF000000);
const Color backgroundColor = Color(0xffD6D6D6);
const Color whiteColor = Color(0xffFFFFFF);
const Color blackColor = Color(0xff232323);
const Color presentColor = Color(0xff34346D);
const Color absentColor = Color(0xffB6465A);
const Color lateColor = Color(0xffF2C62A);

const Gradient gradientButtonColor1 = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF34346D), Color(0xFFB6465A)],
);
const Gradient gradientButtonColor2 = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFEDD0D5), Color(0xFFB9B7CA)],
);

// final ThemeData myTheme = ThemeData(
//   primaryColor: baseTextColor,
//   scaffoldBackgroundColor: backgroundColor,
//   textTheme: const TextTheme(
//     bodyMedium: TextStyle(color: baseTextColor),
//   ),
// );

final ThemeData lightTheme = ThemeData(
  iconTheme: const IconThemeData(
    color: Color(0xff292D32),
  ),
  primaryColor: baseTextColorLight,
  scaffoldBackgroundColor: backgroundColorLight,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: baseTextColorLight),
  ),
);

final ThemeData darkTheme = ThemeData(
  iconTheme: const IconThemeData(color: whiteColor),
  primaryColor: baseTextColorDark,
  scaffoldBackgroundColor: backgroundColorDark,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: baseTextColorDark),
  ),
);
