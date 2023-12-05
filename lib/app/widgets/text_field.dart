import 'package:flutter/material.dart';
import 'package:sber_app/app/utils/constants.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final String description;

  const AppTextField(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFonts.titleMedium,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
        ),
        Text(
          description, 
          style: AppFonts.bodySmall),
      ],
    );
  }
}
