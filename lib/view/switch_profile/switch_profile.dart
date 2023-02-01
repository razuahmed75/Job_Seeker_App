import 'package:assignment/view/switch_profile/components/button.dart';
import 'package:assignment/widgets/icon_and_text.dart';
import 'package:assignment/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../config/dimensions.dart';

class SwitchProfile extends StatelessWidget {
  const SwitchProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height(40)),

              // header text
              IconAndText(
                text: "Switch Profile",
                onTap: () => Get.back(),
              ),
              SizedBox(height: height(80)),

              // image and text
              _image(),
              SizedBox(height: height(30)),

              // buttons
              CustomButton(
                  onTap: null, text: "Switch to Recruiters", isColor: true),
              SizedBox(height: height(20)),
              CustomButton(
                  onTap: null, text: "Stay as Job Seeker", isColor: false),
            ],
          ),
        ),
      ),
    );
  }

  Stack _image() {
    return Stack(
      children: [
        SvgPicture.asset(
          "assets/svg/job_seeker.svg",
          height: 200,
          width: 150,
        ),
        Positioned(
            top: 0,
            right: width(50),
            child: SmallText(
              text: "Need Candidate\nInstantly?",
            ))
      ],
    );
  }
}
