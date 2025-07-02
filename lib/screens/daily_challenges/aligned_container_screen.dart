import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';

class AlignedContainerScreen extends StatelessWidget {
  const AlignedContainerScreen({super.key});
  /*
  Day 5 Challenge (29/06/25): Alignment, Padding, and Margin

  Design a screen with:
  - Two Containers having different margins and paddings
  - Demonstrate Align widget by aligning one Container to the bottom right
*/

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: CustomAppBar(
        title: "Day 5 - Alignment, Padding & Margin",
        fontSize: width * 0.045,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.amber,
              child: Container(
                margin: EdgeInsets.all(24),
                padding: EdgeInsets.all(16),
                color: Colors.grey,
                child: Container(
                  color: Colors.white,
                  child: Text(
                    "Top Center Container",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                color: Colors.amber,
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  color: Colors.grey,
                  child: Container(
                    color: Colors.white,
                    child: Text(
                      "Bottom Right Container",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
