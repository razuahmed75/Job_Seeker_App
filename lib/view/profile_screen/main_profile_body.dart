import 'package:assignment/config/dimensions.dart';
import 'package:assignment/services/api_services.dart';
import 'package:assignment/view/profile_screen/components/footer_section.dart';
import 'package:assignment/view/profile_screen/components/job_preference.dart';
import 'package:assignment/view/profile_screen/components/approval_status.dart';
import 'package:flutter/material.dart';
import 'components/profile_completion.dart';
import 'components/user_activity.dart';
import 'components/username_and_photo.dart';

class MainProfileBody extends StatelessWidget {
  const MainProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height(20)),

            // user name and photo
            UserNameAndPHoto(),
            SizedBox(height: height(23)),

            // user activity
            UserActivity(),
            SizedBox(height: height(36)),

            // profile completion
            ProfileCompletion(),
            SizedBox(height: height(39)),

            // approval status
            ApprovalStatus(),
            SizedBox(height: height(18)),

            // job preferences
            JobPreference(),
            SizedBox(height: height(44)),

            // footer section
            FooterSection(),
            SizedBox(height: height(20)),

            Container(
              height: 100,
              child: FutureBuilder(
                  future: ApiServices.fetchUserData(context),
                  builder: (_, snapshot) {
                    if (!snapshot.hasData) {
                      return Text("loading");
                    }
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index) {
                          var datas = snapshot.data;
                          return Text(
                            datas![index].name.toString(),
                            style: TextStyle(color: Colors.black),
                          );
                        });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
