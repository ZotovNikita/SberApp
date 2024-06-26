import 'package:flutter/material.dart';

class CategoryName extends StatelessWidget {
  final String title;
  final String description;

  const CategoryName(
    {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
        ),
        Text(
          description, 
          style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
