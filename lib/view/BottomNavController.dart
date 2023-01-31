import 'package:assignment/view/job_screen.dart';
import 'package:assignment/view/message_screen.dart';
import 'package:assignment/view/profile_screen/main_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  /// variables
  int _zeroIndex = 0;
  List pages = [JobScreen(), MessageScreen(), MainProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            onTabChange: (index) => setState(() => _zeroIndex = index),
            gap: 8,
            color: Colors.black,
            activeColor: Colors.black,
            backgroundColor: Colors.white,
            tabBackgroundColor: Colors.blue.shade50,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                  icon: Icons.note_alt_outlined,
                  text: 'Jobs',
                  textStyle:
                      GoogleFonts.robotoMono(fontWeight: FontWeight.bold)),
              GButton(
                icon: Icons.message_outlined,
                text: 'Message',
                textStyle: GoogleFonts.robotoMono(fontWeight: FontWeight.bold),
              ),
              GButton(
                  icon: Icons.person_outline,
                  text: 'Profile',
                  textStyle:
                      GoogleFonts.robotoMono(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
      body: pages[_zeroIndex],
    );
  }
}
