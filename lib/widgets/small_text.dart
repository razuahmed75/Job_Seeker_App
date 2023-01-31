import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? textColor;

  const SmallText({
    super.key,
    required this.text,
    this.size = 12,
    this.fontWeight = FontWeight.w400,
    this.textColor = const Color(0xFF000000),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
