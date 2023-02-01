import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/big_text.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final bool isColor;
  final double? widths;

  const CustomButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.isColor,
      this.widths});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: height(44),
            width: widths ?? width(220),
            padding: EdgeInsets.symmetric(horizontal: width(12)),
            decoration: BoxDecoration(
              color: isColor ? Colors.green.shade300 : Colors.transparent,
              borderRadius: BorderRadius.circular(radius(12)),
              border: Border.all(
                  width: 1,
                  color: isColor ? Colors.transparent : Colors.green.shade400),
            ),
            child: BigText(
              text: text,
              size: font(22),
              fontWeight: FontWeight.w700,
              textColor: isColor ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
