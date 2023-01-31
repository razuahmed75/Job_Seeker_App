import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/small_text.dart';
import 'column_layout.dart';

class JobPreference extends StatelessWidget {
  const JobPreference({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ColumnText(
              firstText: "Technology & Engineering",
              secondText: "Design/Animation/Mobile",
              alignment: CrossAxisAlignment.start,
            ),
            ColumnText(
              firstText: "40K BDT / Month",
              firstTextSize: font(10),
              secondText: "Uttara, Dhaka",
              alignment: CrossAxisAlignment.center,
            ),
            BigText(
              text: ">>",
              textColor: Colors.grey.shade500,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
        SmallText(
          text: "Development/Data Analytics",
          size: font(10),
          textColor: Colors.grey.shade600,
        ),
        SizedBox(height: height(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ColumnText(
              firstText: "Internet, IT & Online",
              secondText: "Any Catagories",
              alignment: CrossAxisAlignment.start,
            ),
            ColumnText(
              firstText: "45K BDT / Month",
              firstTextSize: font(10),
              secondText: "Anywhere in Bangladesh",
              alignment: CrossAxisAlignment.center,
            ),
            BigText(
              text: ">>",
              textColor: Colors.grey.shade500,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ],
    );
  }
}
