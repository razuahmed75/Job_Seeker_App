import 'package:assignment/controller/controller.dart';
import 'package:assignment/view/bottom_nav/BottomNavController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

import 'view/login/login_screen.dart';

void main() async {
  await GetStorage.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ApiController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ApiController apiController =
        Provider.of<ApiController>(context, listen: false);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      // home: apiController.token != null ? LoginScreen() : BottomNavPage(),
    );
  }
}
