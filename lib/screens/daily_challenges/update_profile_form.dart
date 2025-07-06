import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';
import 'package:my_app/custom_widgets/custom_button.dart';

class UpdateProfileForm extends StatefulWidget {
  const UpdateProfileForm({super.key});

  @override
  State<UpdateProfileForm> createState() => _UpdateProfileFormState();
}

class _UpdateProfileFormState extends State<UpdateProfileForm> {
  String selectedValue = '';
  DateTime? selectedDate;

  void _selectDate() async {
    final DateTime date = DateTime.now();

    final DateTime intialandlastDate = DateTime(
      date.year - 18,
      date.month,
      date.day,
    );
    final DateTime startDate = DateTime(date.year - 118, date.month, date.day);
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: intialandlastDate,
      firstDate: startDate,
      lastDate: intialandlastDate,
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Update Profile',
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16),
              DropdownButton(
                dropdownColor: Colors.amber,
                borderRadius: BorderRadius.circular(16),
                isExpanded: true,
                padding: EdgeInsets.all(8),
                value: selectedValue,
                items: ['', 'Male', 'Female', 'Other'].map((value) {
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
              InkWell(
                onTap: () => _selectDate(),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                  ),
                  child: Text(
                    selectedDate == null
                        ? 'Select Birthdate'
                        : '${selectedDate!.day.toString()}/${selectedDate!.month.toString()}/${selectedDate!.year.toString()}',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              CustomButton(days: 'Submit', onPressede: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
