import 'package:flutter/material.dart';

import '../config/dimensions.dart';
import 'small_text.dart';

class SquareContainer extends StatelessWidget {
  final String text;
  final double? widths;
  const SquareContainer({super.key, required this.text, this.widths});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width(widths ?? 8), vertical: height(4)),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius(6)),
        color: Color(0xFF45ED89),
      ),
      child: SmallText(
        text: text,
        size: font(10),
        textColor: Colors.white,
      ),
    );
  }
}
