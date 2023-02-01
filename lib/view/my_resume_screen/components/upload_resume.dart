import 'package:assignment/widgets/square_container.dart';
import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/small_text.dart';

class UploadResume extends StatelessWidget {
  const UploadResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmallText(text: "Upload your CV/Resume", size: font(10)),
        SizedBox(width: width(35)),
        SquareContainer(text: "Upload"),
      ],
    );
  }
}
