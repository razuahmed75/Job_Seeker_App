import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/small_text.dart';
import 'column_layout.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ColumnText(
              firstText: "Bringin Technologies Ltd.",
              firstTextSize: font(12),
              secondText: "UI/UX Designer",
              alignment: CrossAxisAlignment.start,
            ),
            ColumnText(
              firstText: "Dec 2022 - Present",
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
        ),
        SizedBox(height: height(10)),
        SmallText(
          text:
              "Examine previous design feedback and briefs for new projects, and collaborate with the team.",
          textColor: Colors.grey.shade900,
          fontWeight: FontWeight.w300,
        ),
        SmallText(
          text:
              "Investigate various topics, from the web or mobile usage analytics to trend spotting. Exa",
          textColor: Colors.grey.shade900,
          fontWeight: FontWeight.w300,
        ),
      ],
    );
  }
}
