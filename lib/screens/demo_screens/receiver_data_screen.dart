import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';
import 'package:my_app/custom_widgets/custom_button.dart';
import 'package:my_app/screens/main_screen.dart';

class ReceiverDataScreen extends StatefulWidget {
  const ReceiverDataScreen({super.key});

  @override
  State<ReceiverDataScreen> createState() => _ReceiverDataScreenState();
}

class _ReceiverDataScreenState extends State<ReceiverDataScreen> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: CustomAppBar(title: "ReceiverDataScreen", fontSize: 20),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              Text(
                args['name'].toString(),
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 16),
              Text(
                args['age'].toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              CustomButton(
                width: width,
                height: height,
                days: "Back",
                onPressede: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                    (route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
