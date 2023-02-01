import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/big_text.dart';
import 'column_layout.dart';

class EducationQualify extends StatelessWidget {
  const EducationQualify({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ColumnText(
          firstText: "National University",
          secondText: "BSS/MSS in Economics",
          alignment: CrossAxisAlignment.start,
        ),
        ColumnText(
          firstText: "July 2013 -  Dec 2017",
          firstTextSize: font(10),
          secondText: "",
          alignment: CrossAxisAlignment.center,
        ),
        Container(
          margin: EdgeInsets.only(top: height(12)),
          child: BigText(
            text: ">>",
            textColor: Colors.grey.shade500,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
