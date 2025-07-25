import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';

class VerticalBoxScreen extends StatelessWidget {
  const VerticalBoxScreen({super.key});
  /*
        Day 2 Challenge (26/06/25): Vertical Layout using Column

        Build a screen with a Column that has:
        - 3 square boxes stacked vertically
        - Each box has a different background color
        - Each box contains a Text widget with labels: "Box 1", "Box 2", "Box 3"
  */

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: CustomAppBar(
        title: "Day 2 - Vertical Box Layout",
        fontSize: width * 0.05,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255, 0, 0, 0.4),
                        blurRadius: 12,
                        spreadRadius: 2,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  height: height * 0.2,
                  width: width * 0.4,
                  alignment: Alignment.center,
                  child: Text(
                    "Red Box",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 255, 0, 0.4),
                        blurRadius: 12,
                        spreadRadius: 2,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  height: height * 0.2,
                  width: width * 0.4,
                  alignment: Alignment.center,
                  child: Text(
                    "Green Box",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 255, 0.4),
                        blurRadius: 12,
                        spreadRadius: 2,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                  height: height * 0.2,
                  width: width * 0.4,
                  alignment: Alignment.center,
                  child: Text(
                    "Blue Box",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
