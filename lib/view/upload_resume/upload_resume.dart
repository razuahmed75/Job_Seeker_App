import 'package:flutter/material.dart';

import 'upload_resume_body.dart';

class UploadResume extends StatelessWidget {
  const UploadResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: UploadResumeBody(),
    );
  }
}
