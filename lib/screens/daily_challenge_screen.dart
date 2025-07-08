import 'package:flutter/material.dart';
import 'package:my_app/screens/daily_challenges/aligned_container_screen.dart';
import 'package:my_app/screens/daily_challenges/basic_container_screen.dart';
import 'package:my_app/screens/daily_challenges/business_card_screen.dart';
import 'package:my_app/screens/daily_challenges/feedback_screen.dart';
import 'package:my_app/screens/daily_challenges/horizontal_icon_screen.dart';
import 'package:my_app/screens/daily_challenges/login_screen.dart';
import 'package:my_app/screens/daily_challenges/profile_card_screen.dart';
import 'package:my_app/screens/daily_challenges/scrollable_list_view_screen.dart';
import 'package:my_app/screens/daily_challenges/styled_text_screen.dart';
import 'package:my_app/screens/daily_challenges/vertical_box_screen.dart';

import '../custom_widgets/custom_appbar.dart';
import '../custom_widgets/custom_button.dart';

class DailyChallengeScreen extends StatelessWidget {
  const DailyChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: CustomAppBar(
        title: "DailyChallengeScreen",
        fontSize: width * 0.05,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            CustomButton(
              days: "Day1 Challenge",

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

              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerticalBoxScreen()),
                );
              },
            ),
            CustomButton(
              days: "Day3 Challenge",

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

              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StyledTextScreen()),
                );
              },
            ),
            CustomButton(
              days: "Day5 Challenge",

              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlignedContainerScreen(),
                  ),
                );
              },
            ),
            CustomButton(
              days: "Day6 Challenge",

              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileCardScreen()),
                );
              },
            ),
            CustomButton(
              days: "Day7 Challenge",

              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusinessCardScreen()),
                );
              },
            ),
            CustomButton(
              days: "Day8 Challenge",

              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
            CustomButton(
              days: "Day9 Challenge",
              onPressede: () {
                Navigator.pushNamed(context, 'StyleButtonScreen');
              },
            ),
            CustomButton(
              days: "Day10 Challenge",
              onPressede: () {
                Navigator.pushNamed(context, 'SignUpScreen');
              },
            ),
            CustomButton(
              days: "Day11 Challenge",
              onPressede: () {
                Navigator.pushNamed(context, 'HomePage');
              },
            ),
            CustomButton(
              days: "Day12 Challenge",
              onPressede: () {
                Navigator.pushNamed(context, 'UpdateProfileForm');
              },
            ),
            CustomButton(
              days: "Day13 Challenge",
              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScrollableListViewScreen(),
                  ),
                );
              },
            ),
            CustomButton(
              days: "Day14 Challenge",
              onPressede: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
