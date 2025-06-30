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
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: CustomAppBar(
        title: "Day 5 - Alignment, Padding & Margin",
        fontSize: width * 0.045,
      ),
      body: Column(
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
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.amber,
              child: Container(
                margin: EdgeInsets.only(right: 20, bottom: 20),
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
    );
  }
}
