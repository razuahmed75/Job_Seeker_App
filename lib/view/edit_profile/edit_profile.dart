import 'dart:io';

import 'package:assignment/config/dimensions.dart';
import 'package:assignment/view/edit_profile/components/form_section.dart';
import 'package:assignment/widgets/icon_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../controller/controller.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiController apiController =
        Provider.of<ApiController>(context, listen: true);
    // var token = apiController.candidate!.data.token;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height(40)),

              // header text
              IconAndText(
                text: "My Profile",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: height(19)),

              // user profile photo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () =>
                            apiController.showBottomSheet(context: context),
                        child: _profilePHoto(apiController.image),
                      ),

                      /// on clicked upload photo
                      _choosePHoto()
                    ],
                  ),
                ],
              ),
              SizedBox(height: height(39)),

              // user form section
              FormSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profilePHoto(img) {
    return Material(
      elevation: 22,
      shadowColor: Colors.grey.shade800,
      color: Colors.transparent,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius(50)),
          borderSide: BorderSide(
            color: Colors.transparent,
          )),
      child: img != null
          ? Container(
              width: height(67),
              height: height(67),
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.grey.shade700,
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.file(
                    fit: BoxFit.cover,
                    File(
                      img,
                    )),
              ))
          : Container(
              width: height(67),
              height: height(67),
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Colors.grey.shade700,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/profile.jpg"),
                    fit: BoxFit.cover,
                  )),
            ),
      // child: Container(
      //   width: height(67),
      //   height: height(67),
      //   padding: EdgeInsets.all(3),
      //   decoration: BoxDecoration(
      //       color: Colors.grey.shade700,
      //       shape: BoxShape.circle,
      //       image: DecorationImage(
      //         image:  Image.file(
      //                   fit: BoxFit.cover,
      //                   File(
      //                     provider.image,
      //                   )),
      //         fit: BoxFit.cover,
      //       )),
      // ),
    );
  }

  Widget _choosePHoto() {
    return Positioned(
        bottom: height(5),
        right: 0,
        child: GestureDetector(
          // onTap: ()=> ,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade800, shape: BoxShape.circle),
              padding: EdgeInsets.all(height(5)),
              child: SvgPicture.asset(
                "assets/svg/camera.svg",
                color: Colors.white,
                height: height(12),
              )),
        ));
  }
}
