import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/big_text.dart';

class RowText extends StatelessWidget {
  final String text;
  final IconData? icon;
  final double? textSize;
  const RowText({super.key, required this.text, this.icon, this.textSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BigText(text: text, size: textSize ?? font(16)),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.grey.shade600,
            size: height(14),
          ),
        ),
      ],
    );
  }
}
