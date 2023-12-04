import 'package:flutter/material.dart';
import 'package:sber_app/app/models/user.dart';

abstract class AppColors {
  static const Color primary = Colors.white;
  static const Color textPrimary = Colors.black;
  static final Color textSecondary = Colors.black.withOpacity(0.55);
  static const Color shadow = Color(0x7A1D1D25);
  static const Color tabBrand = Color(0xFF068441);
}

abstract class AppFonts {

  static const titleLarge = TextStyle(
      fontFamily: 'SF_Pro_Display',
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: AppColors.textPrimary,);

  static const titleMedium = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: AppColors.textPrimary);

  static const titleSmall = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.textPrimary);

  static final bodyLarge = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w500,
      fontSize: 20,
      color: AppColors.textSecondary);

  static final bodyMedium = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.textSecondary);

  static final bodySmall = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.textSecondary);
}

abstract class Strings {
  static const String profile = "Профиль";
  static const String settings = "Настройки";
}

abstract class Resources {
  static const String userProfileImage = "assets/images/photo.png";
}

final user = User(Resources.userProfileImage, "Екатерина");
