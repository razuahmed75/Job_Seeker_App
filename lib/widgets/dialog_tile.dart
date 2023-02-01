import 'package:flutter/material.dart';

import '../config/dimensions.dart';
import 'big_text.dart';
import 'small_text.dart';

class DialogTile extends StatelessWidget {
  final String leading, trailing;

  const DialogTile({super.key, required this.leading, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: width(10)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BigText(text: leading),
          SmallText(
            text: trailing,
            textColor: Colors.green.shade500,
          ),
        ],
      ),
    );
  }
}
