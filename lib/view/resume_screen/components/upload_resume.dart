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
        Container(
          padding:
              EdgeInsets.symmetric(horizontal: width(8), vertical: height(4)),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius(6)),
            color: Color(0xFF45ED89),
          ),
          child: SmallText(
            text: "Upload",
            size: font(10),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
