import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/small_text.dart';

class TransparentContainer extends StatelessWidget {
  final String text;
  final double? width;
  const TransparentContainer({super.key, required this.text, this.width = 101});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height(26),
      padding: EdgeInsets.only(right: 5, top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius(6)),
        color: Colors.grey.shade200,
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.clear, size: height(10)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmallText(text: text, size: font(12)),
            ],
          ),
        ],
      ),
    );
  }
}
