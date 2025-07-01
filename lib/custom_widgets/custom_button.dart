import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    required this.days,
    required this.onPressede,
  });

  final double width;
  final double height;
  final String days;
  final Function() onPressede;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, bottom: 20, left: 20),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: height * 0.02),
          backgroundColor: Colors.grey,
          elevation: 10,
        ),
        onPressed: onPressede,
        child: Text(
          days,
          style: TextStyle(
            fontSize: width * 0.045,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
