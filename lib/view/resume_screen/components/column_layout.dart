import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/small_text.dart';

class ColumnText extends StatelessWidget {
  final String firstText;
  final String secondText;
  final double? firstTextSize;
  final CrossAxisAlignment alignment;

  const ColumnText({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.alignment,
    this.firstTextSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        SmallText(
          text: firstText,
          size: firstTextSize,
        ),
        SizedBox(height: height(5)),
        SmallText(
          text: secondText,
          size: font(10),
          textColor: Colors.grey.shade600,
        ),
      ],
    );
  }
}
