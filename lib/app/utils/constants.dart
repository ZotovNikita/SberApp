import 'package:flutter/material.dart';
import 'package:sber_app/app/models/user.dart';
import 'package:sber_app/app/models/chapter.dart';
import 'package:sber_app/app/models/service.dart';

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
    color: AppColors.textPrimary,
    letterSpacing: -0.7,
  );

  static const titleMedium = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: AppColors.textPrimary,
      letterSpacing: -0.7,);

  static const titleSmall = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.textPrimary,
      letterSpacing: -0.7,);

  static final bodyLarge = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w500,
      fontSize: 20,
      color: AppColors.textSecondary,
      letterSpacing: -0.42);

  static final bodyMedium = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColors.textSecondary,
      letterSpacing: -0.42);

  static final bodySmall = TextStyle(
      fontFamily: 'SF_Pro_Text',
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.textSecondary,
      letterSpacing: -0.42);
}

abstract class Strings {
  static const String profile = "Профиль";
  static const String settings = "Настройки";
  static const String userName = "Екатерина";
  static const String enabledTitle = "У вас подключено";
  static const String enabledDescription =
      "Подписки, автоплатежи и сервисы, на которые вы подписаны";
  static const String tariffsAndLimitsTitle = "Тарифы и лимиты";
  static const String tariffsAndLimitsDescription =
      "Для операций в Сбербанк Онлайн";
  static const String interestsTitle = "Интересы";
  static const String interestsDescription =
      "Мы подбираем истории и предложения по темам, которые вам нравятся";
  static const String sberPrimeTitle = "СберПрайм";
  static const String sberPrimePayment = "Платеж 9 июля";
  static const String sberPrimeCost = "199 рублей в месяц";
  static const String transfersTitle = "Переводы";
  static const String transfersPayment = "Автопродление 21 августа";
  static const String transfersCost = "199 рублей в месяц";
  
}

abstract class Resources {
  static const String userProfileImage = "assets/images/photo.png";
  static const String sberPrimeImage = "assets/images/sber_prime.png";
  static const String transfersImage = "assets/images/transfers.png";
}

final user = User(Resources.userProfileImage, Strings.userName);

final enabled = Chapter(Strings.enabledTitle, Strings.enabledDescription);

final tariffsAndLimits =
    Chapter(Strings.tariffsAndLimitsTitle, Strings.tariffsAndLimitsDescription);

final interests = Chapter(Strings.interestsTitle, Strings.interestsDescription);

final List<Service> services = [
  Service(
    Resources.sberPrimeImage,
    Strings.sberPrimeTitle,
    Strings.sberPrimePayment,
    Strings.sberPrimeCost 
  ),
  Service(
    Resources.transfersImage,
    Strings.transfersTitle,
    Strings.transfersPayment,
    Strings.transfersCost
  ),
];
