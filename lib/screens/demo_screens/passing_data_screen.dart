import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';
import 'package:my_app/custom_widgets/custom_button.dart';

class PassingDataScreen extends StatefulWidget {
  const PassingDataScreen({super.key});

  @override
  State<PassingDataScreen> createState() => _PassingDataScreenState();
}

class _PassingDataScreenState extends State<PassingDataScreen> {
  String name = '';
  String age = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "PassingDataScreen", fontSize: 20),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 16),

              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'name',
                  hintText: 'ahmad',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'age',
                  hintText: '18',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    age = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              CustomButton(
                days: "Submit",
                onPressede: () {
                  Navigator.pushNamed(
                    context,
                    'ReceiverDataScreen',
                    //  arguments: 'ahmad',
                    arguments: {'name': name, 'age': age},
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
