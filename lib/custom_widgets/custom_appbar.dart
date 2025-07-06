import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.fontSize,
    this.backgroundColor,
  });
  final String? title;
  final double? fontSize;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: backgroundColor ?? Colors.black,
      centerTitle: true,
      title: Text(
        title ?? "",
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize ?? 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
