import 'package:assignment/services/api_services.dart';
import 'package:assignment/view/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../config/dimensions.dart';
import '../../../../key.dart';
import '../../../../widgets/big_text.dart';
import '../../../../widgets/small_text.dart';

class UserNameAndPHoto extends StatefulWidget {
  const UserNameAndPHoto({super.key});

  @override
  State<UserNameAndPHoto> createState() => _UserNameAndPHotoState();
}

class _UserNameAndPHotoState extends State<UserNameAndPHoto> {
  @override
  void initState() {
    ApiServices().fetchUserData(context);
    super.initState();
  }

  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    print(box.read(Keys.name));
    // final apicontroller = Provider.of<ApiController>(context, listen: false);
    // var data = apicontroller.userData!.name;
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            final route = MaterialPageRoute(
                builder: (_) => EditProfileScreen(
                      image: 'assets/images/profile.jpg',
                      tag: "tag",
                    ));
            Navigator.of(context).push(route);
          },
          child: Hero(
            tag: "tag",
            child: Container(
              height: height(67),
              width: height(67),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height(67) / 2),
                image: DecorationImage(
                    image: AssetImage('assets/images/profile.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        SizedBox(width: width(31)),
        Column(
          children: [
            // BigText(text: ),
            BigText(text: box.read(Keys.name).toString()),
            GestureDetector(
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (_) => EditProfileScreen(
                          image: 'assets/images/profile.jpg',
                          tag: "tag",
                        ));
                Navigator.of(context).push(route);
              },
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    radius: 20,
                    child: Icon(
                      Icons.edit,
                      color: Colors.grey.shade600,
                      size: height(18),
                    ),
                  ),
                  SmallText(text: "Edit My Profile"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
