import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? inputType;
  final String hinText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hinText,
    this.inputType = TextInputType.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: inputType,
        decoration: InputDecoration(
          hintText: hinText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
