import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';
import 'package:my_app/custom_widgets/custom_button.dart';
import 'package:my_app/custom_widgets/custom_elevated_button.dart';
import 'package:my_app/custom_widgets/custom_floating_action_button.dart';

class StyleButtonScreen extends StatelessWidget {
  const StyleButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Types of Buttons", fontSize: 20),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(12),

          children: [
            CustomButton(days: "CustomButton", onPressede: () {}),
            CustomElevatedButton(),

            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text('FilledButton'),
            ),
            SizedBox(height: 16),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                side: BorderSide(color: Colors.red, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Text('OutlinedButton'),
            ),
            SizedBox(height: 16),
            RawMaterialButton(
              onPressed: () {},
              fillColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'RawMaterialButton',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 16),
            CupertinoButton(
              color: CupertinoColors.activeBlue,
              borderRadius: BorderRadius.circular(12),
              padding: EdgeInsets.symmetric(vertical: 14),
              sizeStyle: CupertinoButtonSize.medium,
              onPressed: () {},
              child: Text(
                "CupertinoButton",
                style: TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 16),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text('TextButton'),
            ),
            SizedBox(height: 16),
            IconButton(
              color: Colors.green,
              iconSize: 32,
              icon: Icon(Icons.add_task),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
