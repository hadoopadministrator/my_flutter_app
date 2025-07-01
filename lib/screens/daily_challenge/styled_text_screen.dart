import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';

class StyledTextScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: CustomAppBar(
        title: "Day 4 - Styled Text",
        fontSize: width * 0.05,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
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
    );
  }
}
