import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Profile Page',
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            'Welcome to the Profile Page!',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
