import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Rubik',
  primaryColor: const Color.fromARGB(255, 16, 211, 42),
  secondaryHeaderColor: const Color(0xFFE0EC53),
  highlightColor: const Color(0xFF003E47),
  cardColor: Colors.white,
  appBarTheme: const AppBarTheme(color: Colors.amber),
  shadowColor: Colors.grey[300],
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: Color(0xFF003E47)),
    titleSmall: TextStyle(color: Color(0xFF25282D)),
  ),
  dialogTheme: const DialogTheme(surfaceTintColor: Colors.white),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: Colors.white),
  colorScheme: ColorScheme(
    // background: const Color(0xFFf0f0f0),
    background: const Color.fromARGB(255, 181, 168, 163),
    brightness: Brightness.light,
    primary: const Color(0xFF003E47),
    onPrimary: const Color.fromARGB(255, 12, 180, 107),
    secondary: const Color(0xFFE0EC53),
    onSecondary: const Color(0xFFE0EC53),
    error: Colors.redAccent,
    onError: Colors.redAccent,
    onBackground: const Color(0xFFC3CAD9),
    surface: Colors.white,
    onSurface: const Color(0xFF002349),
    shadow: Colors.grey[300],
  ),
);
