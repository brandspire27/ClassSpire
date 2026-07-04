import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,
    colorSchemeSeed: AppColors.primary,
    textTheme: buildTextTheme(),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.textPrimary,
    ),
  );
}