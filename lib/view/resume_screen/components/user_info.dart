import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/small_text.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: height(67),
          width: height(67),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(height(67) / 2),
            image: DecorationImage(
                image: AssetImage('assets/images/profile.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: width(58)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                BigText(text: "Razu ahmed"),
                CircleAvatar(
                  backgroundColor: Colors.grey.shade100,
                  radius: 20,
                  child: Icon(
                    Icons.edit,
                    color: Colors.grey.shade600,
                    size: height(18),
                  ),
                ),
              ],
            ),
            SmallText(
                text: "MSS in Economics",
                size: font(10),
                textColor: Colors.grey.shade700),
            SizedBox(height: height(5)),
            SmallText(
                text: "27 years old",
                size: font(10),
                textColor: Colors.grey.shade700),
          ],
        ),
      ],
    );
  }
}
