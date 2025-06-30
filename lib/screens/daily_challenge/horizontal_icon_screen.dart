import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';
import 'package:my_app/screens/daily_challenge/styled_text_screen.dart';

class HorizontalIconScreen extends StatelessWidget {
  const HorizontalIconScreen({super.key});

  /*
      Day 3 Challenge (27/06/25): Horizontal Layout using Row

      Build a screen with a Row that contains:
      - 3 icons spaced evenly using MainAxisAlignment.spaceAround
      - Use icons such as: Home, Call, and Email
  */

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "Day 3 - Horizontal Icon Layout",
          fontSize: width * 0.05,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.home, size: width * 0.2),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.call, size: width * 0.2),
                    Text(
                      "Call",
                      style: TextStyle(
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.email, size: width * 0.2),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(right: 20, bottom: 20, left: 20),
              width: width * 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  backgroundColor: Colors.black,
                  elevation: 10,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StyledTextScreen()),
                  );
                },
                child: Text(
                  "Next Day",
                  style: TextStyle(
                    fontSize: width * 0.045,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
