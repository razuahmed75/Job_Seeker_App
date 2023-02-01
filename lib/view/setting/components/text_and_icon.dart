import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/small_text.dart';

Widget TextAndIcon({
  void Function()? onTap,
  required String firstText,
  required bool isIcon,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(right: width(isIcon ? 40 : 30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BigText(
            text: firstText,
            size: font(16),
            fontWeight: FontWeight.w500,
          ),
          isIcon
              ? Icon(
                  Icons.arrow_forward_ios,
                  size: height(14),
                  color: Colors.grey.shade500,
                )
              : SmallText(text: "no update availabe"),
        ],
      ),
    ),
  );
}
