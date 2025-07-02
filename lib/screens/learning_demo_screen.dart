import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';
import 'package:my_app/custom_widgets/custom_button.dart';
import 'package:my_app/screens/demo_screens/all_input_types_screen.dart';

class LearningDemoScreen extends StatelessWidget {
  const LearningDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: CustomAppBar(title: "LearningDemoScreen", fontSize: width * 0.05),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            CustomButton(
              width: width,
              height: height,
              days: "AllInputTypesForm",
              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllInputTypesScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
