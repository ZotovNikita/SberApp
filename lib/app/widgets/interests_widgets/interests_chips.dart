import 'package:flutter/material.dart';
import 'package:sber_app/app/models/chapter.dart';
import 'package:sber_app/app/widgets/category_name.dart';
import 'package:sber_app/app/widgets/interests_widgets/select_intersts.dart';

class Interests extends StatefulWidget {
  const Interests({super.key, required this.chapter, required this.interests});

  final Chapter chapter;
  final Map<String, bool> interests;

  @override
  State<Interests> createState() => _Interests();
}

class _Interests extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          CategoryName(
            title: widget.chapter.title, description: widget.chapter.description
            ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: List<Widget>.generate(
              widget.interests.length,
              (int index) => Builder(
                builder: (BuildContext context) {
                  return SelectInterestChip(
                    title: Text(widget.interests.keys.elementAt(index)),
                    isSelected: widget.interests.values.elementAt(index),
                    onSelected: (bool selected) {
                      setState(() {
                        widget.interests[widget.interests.keys.elementAt(index)] = selected;
                    });
                  },
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}
