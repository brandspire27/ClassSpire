import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

TextTheme buildTextTheme() {
  return const TextTheme(
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: AppColors.textPrimary,
    ),

    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: AppColors.textPrimary,
    ),

    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary,
    ),

    bodyLarge: TextStyle(
      fontSize: 16,
      color: AppColors.textPrimary,
    ),

    bodyMedium: TextStyle(
      fontSize: 14,
      color: AppColors.textSecondary,
    ),
  );
}