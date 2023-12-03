import 'package:flutter/material.dart';
import 'package:sber_app/app/pages/main/user_profile_page.dart';

class SberApp extends StatelessWidget {
  const SberApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UserProfilePage(title: 'Flutter Demo Home Page'),
    );
  }
}
