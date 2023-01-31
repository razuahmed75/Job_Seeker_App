import 'package:assignment/view/resume_screen/resume.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_list_tile.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomListTile(icon: Icons.bookmark_add_outlined, text: "Saved Jobs"),
        GestureDetector(
            onTap: () => Get.to(() => ResumeScreen()),
            child: CustomListTile(
                icon: Icons.note_add_outlined, text: "Upload Resume")),
        CustomListTile(icon: Icons.messenger_outline, text: "Greeting"),
        CustomListTile(icon: Icons.person_add_alt_1_outlined, text: "Switch"),
        CustomListTile(icon: Icons.contact_mail_outlined, text: "Contact Us"),
      ],
    );
  }
}
