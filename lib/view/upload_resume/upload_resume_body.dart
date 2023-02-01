import 'package:assignment/config/dimensions.dart';
import 'package:assignment/view/my_resume_screen/resume.dart';
import 'package:assignment/view/upload_resume/components/build_transparentContainer.dart';
import 'package:assignment/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UploadResumeBody extends StatelessWidget {
  const UploadResumeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(height(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // arrow_back icon
              IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
              SizedBox(height: height(20)),

              // upload your resume
              _UploadResume(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _UploadResume() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            BigText(
              text: "Upload Your Resume",
              size: font(22),
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: height(40)),
            BuildTransparentCon(
              onTap: () {
                Get.to(() => ResumeScreen());
              },
              icon: Icons.upload_file_outlined,
              text: "Upload From Storage",
            ),
            SizedBox(height: height(20)),
            BuildTransparentCon(
                onTap: null,
                icon: Icons.email_outlined,
                text: "Upload Via Email"),
          ],
        ),
      ],
    );
  }
}
