import 'package:assignment/config/dimensions.dart';
import 'package:assignment/view/greeting/greeting.dart';
import 'package:assignment/view/switch_profile/switch_profile.dart';
import 'package:assignment/view/upload_resume/upload_resume.dart';
import 'package:assignment/widgets/dialog_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgets/custom_list_tile.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // saved jobs
        CustomListTile(icon: Icons.bookmark_add_outlined, text: "Saved Jobs"),

        // upload resume
        CustomListTile(
            onTap: () => Get.to(() => UploadResume()),
            icon: Icons.note_add_outlined,
            text: "Upload Resume"),

        // greeting
        CustomListTile(
            onTap: () => Get.to(() => GreetingScreen()),
            icon: Icons.messenger_outline,
            text: "Greeting"),

        // switch profile
        CustomListTile(
            onTap: () => Get.to(() => SwitchProfile()),
            icon: Icons.person_add_alt_1_outlined,
            text: "Switch"),

        // contact us
        CustomListTile(
            onTap: () => _buildDialog(context),
            icon: Icons.contact_mail_outlined,
            text: "Contact Us"),
      ],
    );
  }

  Future<dynamic> _buildDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.transparent,
              insetPadding: EdgeInsets.zero,
              elevation: 0,
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    DialogTile(
                        leading: "WhatsApp", trailing: "+88 01706084790"),
                    SizedBox(height: height(5)),
                    DialogTile(leading: "Call", trailing: "+88 01706084790"),
                    SizedBox(height: height(5)),
                    DialogTile(leading: "Email", trailing: "hello@bringin.io"),
                  ],
                ),
              ),
            ));
  }
}
