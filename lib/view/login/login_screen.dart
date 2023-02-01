import 'package:assignment/controller/controller.dart';
import 'package:assignment/widgets/my_button.dart';
import 'package:assignment/widgets/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _phoneController = TextEditingController();
    ApiController apiController =
        Provider.of<ApiController>(context, listen: true);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign In/ Sign Up\n  Job Seeker",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 30),
                MyTextField(
                  controller: _phoneController,
                  hinText: "Enter phone number",
                ),
                SizedBox(height: 27),
                ValueListenableBuilder(
                    valueListenable: _phoneController,
                    builder: (context, value, child) {
                      return MyButton(
                        onPressed:
                            value.text.isNotEmpty && value.text.length >= 11
                                ? () {
                                    apiController.postData(
                                      {
                                        'phone': _phoneController.text.trim(),
                                        'role': 'seekers',
                                      },
                                      context,
                                      _phoneController.text.trim(),
                                    );
                                  }
                                : null,
                        title: apiController.isLoading
                            ? 'Processing...'
                            : 'Send Code',
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
