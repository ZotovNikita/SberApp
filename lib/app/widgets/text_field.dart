import 'package:flutter/material.dart';
import 'package:sber_app/app/utils/constants.dart';
import 'package:sber_app/app/models/chapter.dart';

class AppTextField extends StatelessWidget {
  final Chapter chapter;

  const AppTextField(
      {super.key, required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          chapter.title,
          style: AppFonts.titleMedium,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
        ),
        Text(
          chapter.description, 
          style: AppFonts.bodySmall),
      ],
    );
  }
}
