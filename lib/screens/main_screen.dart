import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              days: 'DailyChallengeScreen',
              onPressede: () {
                Navigator.pushNamed(context, 'DailyChallengeScreen');
              },
            ),
            CustomButton(
              days: 'LearningDemoScreen',
              onPressede: () {
                Navigator.pushNamed(context, 'LearningDemoScreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
