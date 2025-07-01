import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';

class ProfileCardScreen extends StatelessWidget {
  const ProfileCardScreen({super.key});
  /*
  Day 6 Challenge (30/06/25): Profile Card

  Design a screen with:
  - A profile card layout using a CircleAvatar for the profile picture
  - Display user's name, role, and email using Text widgets

*/

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: CustomAppBar(
        title: "Day 6 - Profile Card",
        fontSize: width * 0.05,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(24),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 12,
                  offset: Offset(0, 6),
                ),
              ],
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 70,
                  child: FlutterLogo(size: 90),
                ),
                Text(
                  "Ahmad Shaikh",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: width * 0.042,
                  ),
                ),
                Text(
                  "ahmadsk00@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: width * 0.036,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
