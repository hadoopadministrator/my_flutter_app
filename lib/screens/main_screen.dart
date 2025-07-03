import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_button.dart';

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
              days: 'DailyChallengeScreen',
              onPressede: () {
                Navigator.pushNamed(context, 'DailyChallengeScreen');
              },
            ),
            CustomButton(
              width: width,
              height: height,
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
