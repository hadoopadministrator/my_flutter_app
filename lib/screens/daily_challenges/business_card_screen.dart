import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';

class BusinessCardScreen extends StatefulWidget {
  const BusinessCardScreen({super.key});
  /*
  Day 7 Challenge (01/07/25): Business Card UI

  Design a business card layout using Card, with a profile picture, 
  name, phone number, and address neatly aligned.
*/

  @override
  State<BusinessCardScreen> createState() => _BusinessCardScreenState();
}

class _BusinessCardScreenState extends State<BusinessCardScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: CustomAppBar(
        title: "Day 7 - Business Card UI",
        fontSize: width * 0.05,
      ),
      body: SafeArea(
        child: Center(
          child: Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Colors.grey.shade400, width: 0.5),
            ),
            margin: EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 70,
                    child: FlutterLogo(
                      size: 90,
                      style: FlutterLogoStyle.stacked,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Ahmad Shaikh",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "9848294761",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: width * 0.042,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "1234 Elm Street\n Springfield, IL 62704\n United States",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: width * 0.034,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
