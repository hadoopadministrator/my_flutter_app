import 'package:flutter/material.dart';
import 'package:my_app/screens/daily_challenge/aligned_container_screen.dart';
import 'package:my_app/screens/daily_challenge/basic_container_screen.dart';
import 'package:my_app/screens/daily_challenge/horizontal_icon_screen.dart';
import 'package:my_app/screens/daily_challenge/styled_text_screen.dart';
import 'package:my_app/screens/daily_challenge/vertical_box_screen.dart';

import '../custom_widgets/custom_appbar.dart';
import '../custom_widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: "Home Page", fontSize: width * 0.05),
        body: ListView(
          children: [
            CustomButton(
              days: "Day1 Challenge",
              width: width,
              height: height,
              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BasicContainerScreen(),
                  ),
                );
              },
            ),
            CustomButton(
              days: "Day2 Challenge",
              width: width,
              height: height,
              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerticalBoxScreen()),
                );
              },
            ),
            CustomButton(
              days: "Day3 Challenge",
              width: width,
              height: height,
              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HorizontalIconScreen(),
                  ),
                );
              },
            ),
            CustomButton(
              days: "Day4 Challenge",
              width: width,
              height: height,
              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StyledTextScreen()),
                );
              },
            ),
            CustomButton(
              days: "Day5 Challenge",
              width: width,
              height: height,
              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlignedContainerScreen(),
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
