import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';
import 'package:my_app/custom_widgets/custom_button.dart';

class AllInputTypesScreen extends StatefulWidget {
  const AllInputTypesScreen({super.key});

  @override
  State<AllInputTypesScreen> createState() => _AllInputTypesScreenState();
}

class _AllInputTypesScreenState extends State<AllInputTypesScreen> {
  String gender = 'Male';
  bool isSubscribed = false;
  bool notifications = false;
  final List<String> countries = [
    'India',
    'Egypt',
    'Australia',
    'Germany',
    'Argentina',
    'Mexico',
  ];
  String selectedCountry = 'India';
  String selectedValue = 'Flutter';
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: CustomAppBar(title: "All Input Types Form", fontSize: 20),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const Text('Gender'),
              Row(
                children: [
                  Radio(
                    value: 'Male',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                  const Text('Male'),
                  Radio(
                    value: 'Female',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                  const Text('Female'),
                ],
              ),
              const SizedBox(height: 16),

              CheckboxListTile(
                value: isSubscribed,
                onChanged: (value) {
                  setState(() {
                    isSubscribed = value!;
                  });
                },
                title: const Text('Receive email updates'),
              ),
              const SizedBox(height: 16),

              DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: 'Country',
                  border: OutlineInputBorder(),
                ),
                value: selectedCountry,
                items: countries
                    .map(
                      (country) => DropdownMenuItem(
                        value: country,
                        child: Text(country),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value!;
                  });
                },
              ),

              const SizedBox(height: 16),
              DropdownButton(
                dropdownColor: Colors.amber,
                borderRadius: BorderRadius.circular(16),
                isExpanded: true,
                padding: EdgeInsets.all(8),
                value: selectedValue,
                items: ['HTML', 'CSS', 'JavaScript', 'Flutter', 'Python'].map((
                  value,
                ) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text('Notifications'),
                  Switch(
                    value: notifications,
                    onChanged: (value) {
                      setState(() {
                        notifications = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CustomButton(
                width: width,
                height: height,
                days: _selectedDate == null
                    ? 'Sselecte Date'
                    : '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
                onPressede: () async {
                  final DateTime? date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                  );
                  if (date != null) {
                    setState(() {
                      _selectedDate = date;
                    });
                  }
                },
              ),
              const SizedBox(height: 16),
              CustomButton(
                width: width,
                height: height,
                days: _selectedTime == null
                    ? 'Selecte Time'
                    : '${_selectedTime!.hour}:${_selectedTime!.minute}',
                onPressede: () async {
                  final TimeOfDay? time = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (time != null) {
                    setState(() {
                      _selectedTime = time;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
