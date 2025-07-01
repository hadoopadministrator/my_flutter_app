import 'package:flutter/material.dart';
import '../../custom_widgets/custom_appbar.dart';

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

    return Scaffold(
      appBar: CustomAppBar(
        title: "Day 1 - Basic Container",
        fontSize: width * 0.05,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(16),
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
        ),
      ),
    );
  }
}
