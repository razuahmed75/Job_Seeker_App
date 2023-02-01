import 'package:assignment/config/dimensions.dart';
import 'package:assignment/controller/controller.dart';
import 'package:assignment/view/setting/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'main_profile_body.dart';

class MainProfile extends StatefulWidget {
  const MainProfile({super.key});

  @override
  State<MainProfile> createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  @override
  Widget build(BuildContext context) {
    ApiController apiController =
        Provider.of<ApiController>(context, listen: true);
    return Scaffold(
      appBar: _buildAppbar(apiController.token, context),
      body: MainProfileBody(),
    );
  }

  AppBar _buildAppbar(token, context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        GestureDetector(
          onTap: () => Get.to(() => SettingScreen()),
          child: Icon(
            Icons.settings,
            color: Colors.grey.shade600,
          ),
        ),
        SizedBox(width: width(10)),
      ],
    );
  }
}
