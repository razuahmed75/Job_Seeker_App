import 'package:flutter/material.dart';

import '../../../config/dimensions.dart';
import 'text_and_icon.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextAndIcon(
          onTap: null,
          isIcon: true,
          firstText: "Account & Notifications",
        ),
        SizedBox(height: height(40)),
        TextAndIcon(
          onTap: null,
          isIcon: true,
          firstText: "Privacy Policy",
        ),
        SizedBox(height: height(40)),
        TextAndIcon(
          onTap: null,
          isIcon: true,
          firstText: "Terms & Conditions",
        ),
        SizedBox(height: height(40)),
        TextAndIcon(
          onTap: null,
          isIcon: false,
          firstText: "New Version Update",
        ),
        SizedBox(height: height(40)),
        TextAndIcon(
          onTap: null,
          isIcon: true,
          firstText: "About",
        ),
      ],
    );
  }
}
