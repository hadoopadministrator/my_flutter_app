import 'package:flutter/material.dart';
import 'package:my_app/screens/horizontal_icon_screen.dart';

class VerticalBoxScreen extends StatefulWidget {
  const VerticalBoxScreen({super.key});
  /*
        Day 2 Challenge (26/06/25): Vertical Layout using Column

        Build a screen with a Column that has:
        - 3 square boxes stacked vertically
        - Each box has a different background color
        - Each box contains a Text widget with labels: "Box 1", "Box 2", "Box 3"
  */

  @override
  State<VerticalBoxScreen> createState() => _VerticalBoxScreenState();
}

class _VerticalBoxScreenState extends State<VerticalBoxScreen> {
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
            "Day 2 - Vertical Box Layout",
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
                      builder: (context) => HorizontalIconScreen(),
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
