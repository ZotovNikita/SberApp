import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sber_app/app/theme/fonts.dart';
import 'package:sber_app/app/theme/colors.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    textTheme: TextTheme(
      titleLarge: AppFonts.titleLarge,
      titleMedium: AppFonts.titleMedium,
      titleSmall: AppFonts.titleSmall,
      bodyLarge: AppFonts.bodyLarge,
      bodyMedium: AppFonts.bodyMedium,
      bodySmall: AppFonts.bodySmall
    ),
    appBarTheme: const AppBarTheme(
      elevation: 4,
      surfaceTintColor: AppColors.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        surfaceTintColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 5
      ),
    ),
    chipTheme: ChipThemeData(
      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
      labelStyle: AppFonts.titleVerySmall,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Colors.transparent)
      ),
      backgroundColor: AppColors.chips,
      selectedColor: AppColors.tabBrand,
      showCheckmark: false
      ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
    ),
    useMaterial3: true,
  );

  static bool isDarkMode() {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    return brightness == Brightness.dark;
  }
}
