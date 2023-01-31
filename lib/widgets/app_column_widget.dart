import 'package:flutter/material.dart';

import '../config/dimensions.dart';
import 'small_text.dart';

class AppColumnWidget extends StatelessWidget {
  final String firstText;
  final String secondText;

  const AppColumnWidget(
      {super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SmallText(
          text: firstText,
          fontWeight: FontWeight.w500,
          size: font(16),
        ),
        SizedBox(height: height(7)),
        SmallText(text: secondText),
      ],
    );
  }
}
