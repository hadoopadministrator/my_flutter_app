import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';
import 'package:my_app/custom_widgets/custom_button.dart';
// import 'package:my_app/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
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
              CustomButton(
                width: width,
                height: height,
                days: "Login",
                onPressede: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
