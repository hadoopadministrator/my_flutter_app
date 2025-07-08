import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.days,
    required this.onPressede,
    this.padding,
    this.margin,
    this.buttonColor,
  });

  final String? days;
  final Function() onPressede;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? buttonColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressede,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor ?? Colors.purple,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 0.5),
        ),
        margin: margin ?? EdgeInsets.all(10),
        padding: padding ?? EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        alignment: Alignment.center,
        child: Text(
          days ?? '',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
