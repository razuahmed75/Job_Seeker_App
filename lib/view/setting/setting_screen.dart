import 'package:assignment/config/dimensions.dart';
import 'package:assignment/view/setting/components/setting_body.dart';
import 'package:assignment/view/switch_profile/components/button.dart';
import 'package:assignment/widgets/icon_and_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width(20)),
          child: Column(
            children: [
              SizedBox(height: height(40)),

              // header text
              IconAndText(text: "Settings", onTap: () => Get.back()),
              SizedBox(height: height(40)),

              // settings menu section
              SettingBody(),
              SizedBox(height: height(60)),

              // logout
              CustomButton(
                onTap: null,
                text: "Log Out",
                isColor: true,
                widths: width(200),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
