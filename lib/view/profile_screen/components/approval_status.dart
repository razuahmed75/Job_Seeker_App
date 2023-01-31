import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/small_text.dart';

class ApprovalStatus extends StatelessWidget {
  const ApprovalStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(34),
      width: double.maxFinite,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: width(13), right: width(11)),
      decoration: BoxDecoration(
        color: Color(0xFF45ED89).withOpacity(0.1),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmallText(
            text: "Your profile has 3 item to improved",
            size: font(14),
          ),
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: height(14),
            ),
          ),
        ],
      ),
    );
  }
}
