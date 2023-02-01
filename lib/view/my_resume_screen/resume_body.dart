import 'package:assignment/view/my_resume_screen/components/education_qualification.dart';
import 'package:assignment/view/my_resume_screen/components/my_skills.dart';
import 'package:assignment/view/my_resume_screen/components/row_layout.dart';
import 'package:assignment/view/my_resume_screen/components/upload_resume.dart';
import 'package:assignment/view/my_resume_screen/components/user_info.dart';
import 'package:assignment/view/my_resume_screen/components/work_experience.dart';
import 'package:assignment/widgets/icon_and_text.dart';
import 'package:assignment/widgets/sized_text.dart';
import 'package:assignment/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../../config/dimensions.dart';
import 'components/job_preferences.dart';

class ResumeBody extends StatelessWidget {
  const ResumeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height(40)),

            // header text
            IconAndText(
              text: "My Resume",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: height(19)),

            // user info
            UserInfo(),
            SizedBox(height: height(25)),

            // text
            SizedText(
                text: "Your profile have two items to be improved.",
                color: Colors.black),
            SizedBox(height: height(14)),

            // upload resume section
            UploadResume(),
            SizedBox(height: height(10)),

            // My bio
            RowText(text: "My Bio", icon: Icons.add_rounded),
            SizedBox(height: height(5)),
            SmallText(
              text:
                  "Jakaria In the beginning of career I’m highly desired to work\nin an organization where ....",
              size: font(12),
              textColor: Colors.grey.shade600,
            ),
            SizedBox(height: height(20)),

            // job preferences
            RowText(text: "Job Preference", icon: Icons.edit),
            JobPreference(),
            SizedBox(height: height(20)),

            // work experience
            RowText(text: "Work Experience", icon: Icons.add_rounded),
            WorkExperience(),
            SizedBox(height: height(20)),

            // education qualification
            RowText(text: "Educational Qualification", icon: Icons.add),
            SizedBox(height: height(5)),
            EducationQualify(),
            SizedBox(height: height(20)),

            // my skills section
            RowText(text: "My Skills", icon: Icons.add),
            SizedBox(height: height(10)),
            MySkills(),
            SizedBox(height: height(20)),

            // my online portfolio
            RowText(text: "My Online Portfoilo", textSize: 12, icon: Icons.add),
            SizedBox(height: height(12)),
            SmallText(text: "www.jakariah.com", size: font(12)),
            SizedBox(height: height(80)),
          ],
        ),
      ),
    );
  }
}
