import 'package:flutter/material.dart';

import '../config/dimensions.dart';

class CustomTextField extends StatelessWidget {
  final IconData? icon;
  final TextEditingController controller;
  final TextInputType? inputType;
  final double? iconSize;
  final String label;

  const CustomTextField({
    super.key,
    this.icon = Icons.done,
    required this.controller,
    this.inputType = TextInputType.text,
    required this.label,
    this.iconSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width(10)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height(6)),
          border: Border.all(width: 1, color: Colors.grey.shade300)),
      child: TextFormField(
        controller: controller,
        keyboardType: inputType,
        decoration: InputDecoration(
            border: InputBorder.none,
            label: Text(label),
            suffixIcon: Icon(
              icon,
              color: Colors.green,
              size: iconSize,
            )),
      ),
    );
  }
}
