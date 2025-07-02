import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_button.dart';
import 'package:my_app/screens/daily_challenge_screen.dart';
import 'package:my_app/screens/learning_demo_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              width: width,
              height: height,
              days: "DailyChallengeScreen",
              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DailyChallengeScreen(),
                  ),
                );
              },
            ),
            CustomButton(
              width: width,
              height: height,
              days: "LearningDemoScreen",
              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LearningDemoScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
