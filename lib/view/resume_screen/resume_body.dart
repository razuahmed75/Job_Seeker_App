import 'dart:ffi';

import 'package:assignment/view/resume_screen/components/column_layout.dart';
import 'package:assignment/view/resume_screen/components/row_layout.dart';
import 'package:assignment/widgets/big_text.dart';
import 'package:assignment/widgets/icon_and_text.dart';
import 'package:assignment/widgets/sized_text.dart';
import 'package:assignment/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../../config/dimensions.dart';

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
            Row(
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
            ),
            SizedBox(height: height(25)),

            //
            SizedText(
                text: "Your profile have two items to be improved.",
                color: Colors.black),
            SizedBox(height: height(14)),

            Row(
              children: [
                SmallText(text: "Upload your CV/Resume", size: font(10)),
                SizedBox(width: width(35)),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width(8), vertical: height(4)),
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
            ),
            SizedBox(height: height(10)),

            //
            RowText(text: "My Bio", icon: Icons.add_rounded),
            SizedBox(height: height(5)),
            SmallText(
              text:
                  "Jakaria In the beginning of career I’m highly desired to work\nin an organization where ....",
              size: font(12),
              textColor: Colors.grey.shade600,
            ),
            SizedBox(height: height(20)),

            SizedBox(height: height(5)),
            RowText(text: "Job Preference", icon: Icons.edit),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColumnText(
                  firstText: "Technology & Engineering",
                  secondText: "Design/Animation/Mobile",
                  alignment: CrossAxisAlignment.start,
                ),
                ColumnText(
                  firstText: "40K BDT / Month",
                  firstTextSize: font(10),
                  secondText: "Uttara, Dhaka",
                  alignment: CrossAxisAlignment.center,
                ),
                BigText(
                  text: ">>",
                  textColor: Colors.grey.shade500,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            SmallText(
              text: "Development/Data Analytics",
              size: font(10),
              textColor: Colors.grey.shade600,
            ),
            SizedBox(height: height(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColumnText(
                  firstText: "Internet, IT & Online",
                  secondText: "Any Catagories",
                  alignment: CrossAxisAlignment.start,
                ),
                ColumnText(
                  firstText: "45K BDT / Month",
                  firstTextSize: font(10),
                  secondText: "Anywhere in Bangladesh",
                  alignment: CrossAxisAlignment.center,
                ),
                BigText(
                  text: ">>",
                  textColor: Colors.grey.shade500,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            SizedBox(height: height(20)),

            //
            RowText(text: "Work Experience", icon: Icons.add_rounded),
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
            SizedBox(height: height(20)),
            RowText(text: "Educational Qualification", icon: Icons.add),
            SizedBox(height: height(5)),

            Row(
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
            ),
            SizedBox(height: height(20)),
          ],
        ),
      ),
    );
  }
}
