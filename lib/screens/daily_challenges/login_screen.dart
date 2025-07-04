import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';
import 'package:my_app/custom_widgets/custom_button.dart';
// import 'package:my_app/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  /*
  Day 8 Challenge (02/07/25): Login Screen UI

  Design a login screen with:
  - Two TextFields for email and password
  - A Login button
  - Add placeholder/hint text inside the fields
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Login Screen", fontSize: 20),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'email',
                  hintText: 'example@gmail.com',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'password',
                  hintText: '••••••••',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              const SizedBox(height: 16),
              CustomButton(days: "Login", onPressede: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
