import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import 'radio_tile.dart';

class GreetingBody extends StatefulWidget {
  const GreetingBody({super.key});

  @override
  State<GreetingBody> createState() => _GreetingBodyState();
}

class _GreetingBodyState extends State<GreetingBody> {
  bool _val1 = true;
  bool _val2 = false;
  bool _val3 = false;
  bool _val4 = false;
  bool _val5 = false;
  bool _val6 = false;
  bool _val7 = false;
  bool _val8 = false;
  bool _val9 = false;
  bool _val10 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioTileWidget(
          onTap: () {
            setState(() {
              _val1 = !_val1;
            });
          },
          text: "I am interested in your job, can we talk?",
          val: _val1,
        ),
        SizedBox(height: height(20)),
        RadioTileWidget(
          onTap: () {
            setState(() {
              _val2 = !_val2;
            });
          },
          text:
              "Hello,i am Jakaria Hasan. I am interested in your job post. Let have a meeting.",
          val: _val2,
        ),
        SizedBox(height: height(20)),
        RadioTileWidget(
          onTap: () {
            setState(() {
              _val3 = !_val3;
            });
          },
          text:
              "Hello, i am Hakaria Hasan. Your job requirements matches with my skills, so its will be better if we have a chat",
          val: _val3,
        ),
        SizedBox(height: height(20)),
        RadioTileWidget(
          onTap: () {
            setState(() {
              _val4 = !_val4;
            });
          },
          text:
              "hello, i am Jakaria Hasan. Hope you are doing well. I have thoroughly read your job description. I velireve that my expertise can add values to your team. Please, let me know a good time to discuss with you.",
          val: _val4,
        ),
        RadioTileWidget(
          onTap: () {
            setState(() {
              _val5 = !_val5;
            });
          },
          text:
              "hello, i am Jakaria Hasan. Hope you are doing well. I have thoroughly read your job description. I velireve that my expertise can add values to your team. Please, let me know a good time to discuss with you.",
          val: _val5,
        ),
        RadioTileWidget(
          onTap: () {
            setState(() {
              _val6 = !_val6;
            });
          },
          text:
              "hello, i am Jakaria Hasan. Hope you are doing well. I have thoroughly read your job description. I velireve that my expertise can add values to your team. Please, let me know a good time to discuss with you.",
          val: _val6,
        ),
        RadioTileWidget(
          onTap: () {
            setState(() {
              _val7 = !_val7;
            });
          },
          text:
              "hello, i am Jakaria Hasan. Hope you are doing well. I have thoroughly read your job description. I velireve that my expertise can add values to your team. Please, let me know a good time to discuss with you.",
          val: _val7,
        ),
        SizedBox(height: height(20)),
        RadioTileWidget(
          onTap: () {
            setState(() {
              _val8 = !_val8;
            });
          },
          text: "I am interested in your job, can we talk?",
          val: _val8,
        ),
        SizedBox(height: height(20)),
        RadioTileWidget(
          onTap: () {
            setState(() {
              _val9 = !_val9;
            });
          },
          text: "I am interested in your job, can we talk?",
          val: _val9,
        ),
        RadioTileWidget(
          onTap: () {
            setState(() {
              _val10 = !_val10;
            });
          },
          text:
              "hello, i am Jakaria Hasan. Hope you are doing well. I have thoroughly read your job description. I velireve that my expertise can add values to your team. Please, let me know a good time to discuss with you.",
          val: _val10,
        ),
      ],
    );
  }
}
