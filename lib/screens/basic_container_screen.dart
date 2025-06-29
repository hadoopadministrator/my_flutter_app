import 'package:flutter/material.dart';
import 'package:my_app/screens/vertical_box_screen.dart';

class BasicContainerScreen extends StatelessWidget {
  const BasicContainerScreen({super.key});

  /*
        Day 1 Challenge (25/06/25): Basic Container UI
      
        Create a centered square Container with:
        - height: 200
        - width: 200
        - background color: blue
        - Text widget inside saying: "Hello Flutter"
  */

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "Day 1 - Basic Container",
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
              height: height * 0.25,
              width: width * 0.5,
              alignment: Alignment.center,
              child: Text(
                "Hello Flutter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.045,
                  fontWeight: FontWeight.bold,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerticalBoxScreen(),
                    ),
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
