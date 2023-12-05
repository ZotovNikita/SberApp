import 'package:flutter/material.dart';
import 'package:sber_app/app/theme/colors.dart';

abstract class AppFonts {
  static const titleLarge = TextStyle(
    fontFamily: 'SF_Pro_Display',
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: AppColors.textPrimary,
    letterSpacing: -0.7,
  );

  static const titleMedium = TextStyle(
    fontFamily: 'SF_Pro_Text',
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColors.textPrimary,
    letterSpacing: -0.7,
  );

  static const titleSmall = TextStyle(
    fontFamily: 'SF_Pro_Text',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.textPrimary,
    letterSpacing: -0.4,
  );

  static const titleVerySmall = TextStyle(
    fontFamily: 'SF_Pro_Text',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.textPrimary,
    letterSpacing: -0.4,
  );

  static final bodyLarge = TextStyle(
    fontFamily: 'SF_Pro_Text',
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: AppColors.textSecondary,
    letterSpacing: -0.42
  );

  static final bodyMedium = TextStyle(
    fontFamily: 'SF_Pro_Text',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: AppColors.textSecondary,
    letterSpacing: -0.42
  );

  static final bodySmall = TextStyle(
    fontFamily: 'SF_Pro_Text',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColors.textSecondary,
    letterSpacing: -0.42
  );
}
