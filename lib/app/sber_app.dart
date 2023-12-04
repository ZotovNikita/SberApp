import 'package:flutter/material.dart';
import 'package:sber_app/app/pages/main/user_profile_page.dart';
import 'package:sber_app/app/theme.dart';

class SberApp extends StatelessWidget {
  const SberApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: const UserProfilePage(),
    );
  }
}
