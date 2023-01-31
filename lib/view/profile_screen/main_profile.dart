import 'package:assignment/config/dimensions.dart';
import 'package:assignment/controller/controller.dart';
import 'package:assignment/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        Provider.of<ApiController>(context, listen: false);
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
        PopupMenuButton(
          color: Colors.grey.shade200,
          icon: Icon(
            Icons.settings,
            color: Colors.grey.shade600,
          ),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text("About"),
              value: 1,
            ),
            PopupMenuItem(
              child: Text("Logout"),
              value: 2,
            ),
          ],
          onSelected: (value) async {
            if (value == 2) {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.remove("token");
              if (token == null) {
                var route =
                    MaterialPageRoute(builder: (context) => LoginScreen());
                Navigator.of(context).push(route);
              }
            }
          },
        ),
        SizedBox(width: width(10)),
      ],
    );
  }
}
