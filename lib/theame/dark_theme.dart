import 'package:flutter/material.dart';

ThemeData dark = ThemeData(
  fontFamily: 'Roboto',
  primaryColor: const Color.fromARGB(255, 255, 162, 23),
  secondaryHeaderColor: const Color(0xFFaaa818),
  brightness: Brightness.dark,
  shadowColor: Colors.black.withOpacity(0.4),
  cardColor: const Color(0xFF29292D),
  textTheme: const TextTheme(
    titleLarge: TextStyle(color:Color(0xFF8dbac3)),
    titleSmall: TextStyle(color: Color(0xFF25282D)),
  ),
  dialogTheme: const DialogTheme(surfaceTintColor: Colors.black),
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: const Color(0xFF689da7),
    onPrimary: const Color.fromARGB(255, 247, 171, 30),
    secondary: const Color(0xFFaaa818),
    onSecondary: const Color(0xFFaaa818),
    error: Colors.redAccent,
    onError: Colors.redAccent,
    surface: Colors.black,
    onSurface:  Colors.white70,
    shadow: Colors.black.withOpacity(0.4),
  ),
);
