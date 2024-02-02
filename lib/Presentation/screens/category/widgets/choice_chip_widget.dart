import 'package:flutter/material.dart';

class BuildChoiceChip extends StatefulWidget {
  final String label;
  final String category;
  final String selectedCategory;
  final VoidCallback onSelect;

  BuildChoiceChip({
    required this.label,
    required this.category,
    required this.selectedCategory,
    required this.onSelect,
  });

  @override
  State<BuildChoiceChip> createState() => _BuildChoiceChipState();
}

class _BuildChoiceChipState extends State<BuildChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: widget.selectedCategory == widget.category
                ? Colors.white
                : Colors.transparent,
            width: 2.0,
          ),
        ),
      ),
      child: ChoiceChip(
        label: Text(
          widget.label,
          style: TextStyle(
            color: widget.selectedCategory == widget.category
                ? Colors.white
                : Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: widget.selectedCategory == widget.category ? 16 : 14,
          ),
        ),
        selected: widget.selectedCategory == widget.category,
        onSelected: (selected) {
          if (selected) {
            widget.onSelect();
          }
        },
        backgroundColor: Colors.black,
        selectedColor: Colors.black,
        elevation: widget.selectedCategory == widget.category ? 2 : 0,
        pressElevation: 2,
        shape: LinearBorder.none,
      ),
    );
  }
}
