import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';

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

    return Scaffold(
      appBar: CustomAppBar(
        title: "Day 3 - Horizontal Icon Layout",
        fontSize: width * 0.05,
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
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
                mainAxisSize: MainAxisSize.min,
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
                mainAxisSize: MainAxisSize.min,
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
        ),
      ),
    );
  }
}
