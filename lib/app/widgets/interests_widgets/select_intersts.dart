import 'package:flutter/material.dart';

class SelectInterestChip extends StatefulWidget {
  const SelectInterestChip(
      {super.key, required this.title, required this.isSelected, required this.onSelected});

  final Widget title;
  final bool isSelected;
  final ValueChanged<bool> onSelected;

  @override
  State<SelectInterestChip> createState() => _ChipState();
}

class _ChipState extends State<SelectInterestChip> {
  bool _selected = false;

  @override
  void initState() {
    super.initState();
    _selected = widget.isSelected;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: widget.title,
      selected: _selected,
      onSelected: (bool selected) {
        setState(() {
          _selected = selected;
          widget.onSelected(selected);
        });
      },
    );
  }
}
