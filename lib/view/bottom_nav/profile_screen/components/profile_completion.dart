import 'package:flutter/material.dart';

import '../../../../config/dimensions.dart';
import '../../../../widgets/small_text.dart';

class ProfileCompletion extends StatelessWidget {
  const ProfileCompletion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SmallText(
          text: "Profile Completion:",
          size: font(14),
          fontWeight: FontWeight.w500,
        ),
        Row(
          children: [
            Container(
              width: width(222),
              height: 3,
              color: Colors.black.withOpacity(0.8),
            ),
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius(6)),
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: SmallText(
                text: "70%",
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
