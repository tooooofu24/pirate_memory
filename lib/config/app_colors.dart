import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const MaterialColor primary =
      MaterialColor(_primaryPrimaryValue, <int, Color>{
    50: Color(0xFFE0EFF9),
    100: Color(0xFFB3D6F0),
    200: Color(0xFF80BBE6),
    300: Color(0xFF4DA0DB),
    400: Color(0xFF268BD4),
    500: Color(_primaryPrimaryValue),
    600: Color(0xFF006FC7),
    700: Color(0xFF0064C0),
    800: Color(0xFF005AB9),
    900: Color(0xFF0047AD),
  });
  static const int _primaryPrimaryValue = 0xFF0077CC;
}
