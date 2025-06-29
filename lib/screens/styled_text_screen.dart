import 'package:flutter/material.dart';

class StyledTextScreen extends StatefulWidget {
  const StyledTextScreen({super.key});
  /*
  Day 4 Challenge (28/06/25): Styled Text

  Build a screen that displays:
  - A Text widget centered on the screen
  - Apply the following custom styling to the Text:
    - Font size: 24
    - Font weight: Bold
    - Text color: Red
  - Wrap the Text widget with Padding to show space around the text
*/

  @override
  State<StyledTextScreen> createState() => _StyledTextScreenState();
}

class _StyledTextScreenState extends State<StyledTextScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "Day 4 - Styled Text",
            style: TextStyle(
              color: Colors.white,
              fontSize: width * 0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  color: Colors.white,
                  child: Text(
                    "This is styled text!",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: width * 0.08,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => VerticalBoxScreen(),
                  //   ),
                  // );
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
