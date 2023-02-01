import 'package:flutter/material.dart';

import '../config/dimensions.dart';
import 'small_text.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;

  const CustomListTile(
      {super.key, required this.icon, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: height(20)),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icon,
                    size: height(18),
                  ),
                ),
                SizedBox(width: width(13)),
                SmallText(
                  text: text,
                  size: font(16),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios, size: height(14)),
          ],
        ),
      ),
    );
  }
}
