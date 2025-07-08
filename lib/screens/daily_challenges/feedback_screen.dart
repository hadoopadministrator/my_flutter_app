import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';
import 'package:my_app/custom_widgets/custom_button.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    showAlert() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Alert Dialog Box'),
            content: const Text('Alert Dialog Box'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Feedback has send')));
                },
                child: Text('Okay'),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: CustomAppBar(title: 'FeedBack Page'),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              days: 'Feedback',
              onPressede: () {
                showAlert();
              },
            ),
          ],
        ),
      ),
    );
  }
}
