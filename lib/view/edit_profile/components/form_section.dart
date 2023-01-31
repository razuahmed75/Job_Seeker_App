import 'package:assignment/controller/controller.dart';
import 'package:assignment/model/profile_model.dart';
import 'package:assignment/view/profile_screen/main_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:provider/provider.dart';

import '../../../config/dimensions.dart';
import '../../../widgets/custom_textfield.dart';
import '../../../widgets/my_button.dart';

class FormSection extends StatelessWidget {
  const FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _fnameController = TextEditingController();
    final _lnameController = TextEditingController();
    final _genderController = TextEditingController();
    final _expController = TextEditingController();
    final _workController = TextEditingController();
    final _dobController = TextEditingController();
    final _phoneController = TextEditingController();

    final ApiController apiController = Provider.of(context, listen: false);

    _updateUser() {
      String fName = _fnameController.text.trim();
      String lName = _lnameController.text.trim();
      String gender = _genderController.text.trim();
      String exp = _expController.text.trim();
      String work = _workController.text.trim();
      String dob = _dobController.text.trim();
      String phn = _phoneController.text.trim();

      apiController.updataUser({
        "firstName": fName,
        "lastName": lName,
        "gender": gender,
        // "photo": "",
        // "portfolioURL": "",
        "educationLevel": exp,
        "DOB": dob,
        // "bio": "",
        "isExperience": true,
        "skills": "Dart,Flutter",
        "greeting": "Welcome",
      }, context);
    }

    // var token = apiController.candidate!.data.token;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width(20)),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              // first name
              CustomTextField(
                  controller: _fnameController, label: "First Name"),
              SizedBox(height: 15),

              // last name
              CustomTextField(controller: _lnameController, label: "Last Name"),
              SizedBox(height: 15),

              // gender
              CustomTextField(
                controller: _genderController,
                label: "Gender",
                icon: Icons.arrow_drop_down,
                iconSize: height(22),
              ),
              SizedBox(height: 15),

              // experience level
              CustomTextField(
                  controller: _expController, label: "Experience Level"),
              SizedBox(height: 15),

              // started working
              CustomTextField(
                controller: _workController,
                label: "Started Working",
                icon: Icons.arrow_drop_down,
                iconSize: height(22),
              ),
              SizedBox(height: 15),

              // date of birth
              CustomTextField(
                controller: _dobController,
                label: "My Date of Birth",
                icon: Icons.arrow_drop_down,
                iconSize: height(22),
              ),
              SizedBox(height: 15),

              // phone number
              CustomTextField(
                  controller: _phoneController, label: "My Phone Number"),
              SizedBox(height: 35),

              // submit button
              MyButton(
                  color: Colors.black,
                  title: "Submit",
                  onPressed: () {
                    _updateUser();
                    final route =
                        MaterialPageRoute(builder: (_) => MainProfile());
                    Navigator.of(context).push(route);
                  }),

              SizedBox(height: 20),

              // Text(token == null ? "No token existed" : token.toString()),
              // Text(apiController.image.toString()),
            ],
          )),
    );
  }
}
