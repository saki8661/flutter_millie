import 'package:flutter/material.dart';

const MaterialColor primaryYellow = MaterialColor(
  0xFFFEEA61,
  <int, Color>{
    50: Color(0xFFFEEA61),
    100: Color(0xFFFEEA61),
    200: Color(0xFFFEEA61),
    300: Color(0xFFFEEA61),
    400: Color(0xFFFEEA61),
    500: Color(0xFFFEEA61),
    600: Color(0xFFFEEA61),
    700: Color(0xFFFEEA61),
    800: Color(0xFFFEEA61),
    900: Color(0xFFFEEA61),
  },
);

ThemeData theme() {
  return ThemeData(
    primarySwatch: primaryYellow,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
}
