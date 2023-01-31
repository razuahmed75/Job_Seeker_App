import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/controller.dart';
import '../widgets/my_button.dart';
import '../widgets/my_textfield.dart';

class VerifyScreen extends StatelessWidget {
  final phoneNumber;
  const VerifyScreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    final _loginController = TextEditingController();
    ApiController apiController =
        Provider.of<ApiController>(context, listen: true);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 84,
              vertical: 10,
            ),
            child: Column(
              children: [
                SizedBox(height: 100),
                Text(
                  'Enter OTP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 17),
                Text(
                  'Enter the otp you get via mobile number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 45),
                MyTextField(
                  controller: _loginController,
                  hinText: "Enter OTP",
                ),
                SizedBox(height: 27),
                ValueListenableBuilder(
                    valueListenable: _loginController,
                    builder: (context, value, child) {
                      return MyButton(
                        onPressed:
                            value.text.isNotEmpty && value.text.length >= 4
                                ? () {
                                    apiController.loggedInData({
                                      'phone': phoneNumber,
                                      'OTP': _loginController.text.trim(),
                                    }, context);
                                  }
                                : null,
                        title: apiController.isLoading
                            ? 'Wait a moment'
                            : 'Submit',
                        color: Color(0xFF263b54),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
