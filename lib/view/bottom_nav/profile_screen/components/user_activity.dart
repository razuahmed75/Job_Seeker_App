import 'package:flutter/material.dart';

import '../../../../widgets/app_column_widget.dart';

class UserActivity extends StatelessWidget {
  const UserActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppColumnWidget(firstText: "27", secondText: "Viewed Jobs"),
        AppColumnWidget(firstText: "14", secondText: "Job Chats"),
        AppColumnWidget(firstText: "04", secondText: "Sent Resume"),
        AppColumnWidget(firstText: "02", secondText: "Saved Jobs"),
      ],
    );
  }
}
