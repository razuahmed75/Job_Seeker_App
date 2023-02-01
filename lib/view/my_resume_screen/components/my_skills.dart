import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import 'transparent_container.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TransparentContainer(text: "Adobe Photoshop", width: width(127)),
            SizedBox(height: height(10)),
            TransparentContainer(text: "Figma"),
            SizedBox(height: height(10)),
            TransparentContainer(text: "Adobe Xd"),
          ],
        ),
        SizedBox(width: width(30)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TransparentContainer(text: "Adobe Illustrator", width: width(127)),
            SizedBox(height: height(10)),
            TransparentContainer(text: "Logo Design"),
          ],
        ),
      ],
    );
  }
}
