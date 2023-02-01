import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/big_text.dart';

class BuildTransparentCon extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;

  const BuildTransparentCon({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height(50),
        width: width(220),
        padding: EdgeInsets.symmetric(horizontal: width(10)),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 1,
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(radius(5)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0.3),
              color: Colors.grey.shade400,
              spreadRadius: 0,
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.grey.shade700,
            ),
            SizedBox(width: width(10)),
            BigText(
              text: text,
              size: font(18),
            ),
          ],
        ),
      ),
    );
  }
}
