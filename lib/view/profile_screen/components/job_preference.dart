import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/small_text.dart';

class JobPreferences extends StatelessWidget {
  const JobPreferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(45),
      width: double.maxFinite,
      padding: EdgeInsets.only(left: width(14), right: width(11)),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              spreadRadius: 1,
              blurRadius: 3,
              color: Colors.grey.shade200,
            ),
          ],
          borderRadius: BorderRadius.circular(radius(6)),
          border: Border.all(
            width: 1,
            color: Colors.grey.shade300,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmallText(
            text: "Job Preference",
            size: font(16),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: height(14),
          ),
        ],
      ),
    );
  }
}
