import 'package:assignment/config/dimensions.dart';
import 'package:assignment/view/greeting/components/radio_tile.dart';
import 'package:assignment/widgets/small_text.dart';
import 'package:assignment/widgets/square_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/ListTile.dart';

class GreetingScreen extends StatefulWidget {
  const GreetingScreen({super.key});

  @override
  State<GreetingScreen> createState() => _GreetingScreenState();
}

class _GreetingScreenState extends State<GreetingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: width(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height(40)),

            // header
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  SquareContainer(text: "Save", widths: 14),
                ],
              ),
            ),
            SizedBox(height: height(20)),

            // body
            GreetingBody(),
            SizedBox(height: height(60)),
          ],
        ),
      )),
    );
  }
}
