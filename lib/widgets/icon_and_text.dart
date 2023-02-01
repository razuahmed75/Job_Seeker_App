import 'package:flutter/material.dart';

import '../config/dimensions.dart';

class IconAndText extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const IconAndText({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: onTap, child: Icon(Icons.arrow_back, color: Colors.black)),
        SizedBox(width: width(95)),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: font(20),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
