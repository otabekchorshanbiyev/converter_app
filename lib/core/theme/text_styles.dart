import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextTheme get darkTextTheme => const TextTheme(
    displayLarge: TextStyle(
      fontSize: 40, fontWeight: FontWeight.w800,
      color: AppColors.darkText, letterSpacing: -1.5,
    ),
    displayMedium: TextStyle(
      fontSize: 32, fontWeight: FontWeight.w700,
      color: AppColors.darkText, letterSpacing: -1.0,
    ),
    headlineLarge: TextStyle(
      fontSize: 24, fontWeight: FontWeight.w700,
      color: AppColors.darkText, letterSpacing: -0.5,
    ),
    headlineMedium: TextStyle(
      fontSize: 20, fontWeight: FontWeight.w700,
      color: AppColors.darkText, letterSpacing: -0.3,
    ),
    titleLarge: TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600,
      color: AppColors.darkText,
    ),
    titleMedium: TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600,
      color: AppColors.darkText,
    ),
    bodyLarge: TextStyle(
      fontSize: 15, fontWeight: FontWeight.w400,
      color: AppColors.darkText,
    ),
    bodyMedium: TextStyle(
      fontSize: 13, fontWeight: FontWeight.w400,
      color: AppColors.darkText2,
    ),
    bodySmall: TextStyle(
      fontSize: 11, fontWeight: FontWeight.w400,
      color: AppColors.darkText2,
    ),
    labelSmall: TextStyle(
      fontSize: 10, fontWeight: FontWeight.w500,
      color: AppColors.darkText2,
      letterSpacing: 1.5,
    ),
  );

  static TextTheme get lightTextTheme => const TextTheme(
    displayLarge: TextStyle(
      fontSize: 40, fontWeight: FontWeight.w800,
      color: AppColors.lightText, letterSpacing: -1.5,
    ),
    displayMedium: TextStyle(
      fontSize: 32, fontWeight: FontWeight.w700,
      color: AppColors.lightText, letterSpacing: -1.0,
    ),
    headlineLarge: TextStyle(
      fontSize: 24, fontWeight: FontWeight.w700,
      color: AppColors.lightText, letterSpacing: -0.5,
    ),
    headlineMedium: TextStyle(
      fontSize: 20, fontWeight: FontWeight.w700,
      color: AppColors.lightText, letterSpacing: -0.3,
    ),
    titleLarge: TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600,
      color: AppColors.lightText,
    ),
    titleMedium: TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600,
      color: AppColors.lightText,
    ),
    bodyLarge: TextStyle(
      fontSize: 15, fontWeight: FontWeight.w400,
      color: AppColors.lightText,
    ),
    bodyMedium: TextStyle(
      fontSize: 13, fontWeight: FontWeight.w400,
      color: AppColors.lightText2,
    ),
    bodySmall: TextStyle(
      fontSize: 11, fontWeight: FontWeight.w400,
      color: AppColors.lightText2,
    ),
    labelSmall: TextStyle(
      fontSize: 10, fontWeight: FontWeight.w500,
      color: AppColors.lightText2,
      letterSpacing: 1.5,
    ),
  );

  static const monoLarge = TextStyle(
    fontFamily: 'monospace',
    fontSize: 32, fontWeight: FontWeight.w700,
    letterSpacing: -1.0,
  );
  static const monoMedium = TextStyle(
    fontFamily: 'monospace',
    fontSize: 20, fontWeight: FontWeight.w600,
  );
  static const monoSmall = TextStyle(
    fontFamily: 'monospace',
    fontSize: 13, fontWeight: FontWeight.w500,
  );
  static const monoXSmall = TextStyle(
    fontFamily: 'monospace',
    fontSize: 11, fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  );
}