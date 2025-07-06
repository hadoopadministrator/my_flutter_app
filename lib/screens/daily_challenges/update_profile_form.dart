import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';
import 'package:my_app/custom_widgets/custom_button.dart';

class UpdateProfileForm extends StatefulWidget {
  const UpdateProfileForm({super.key});

  @override
  State<UpdateProfileForm> createState() => _UpdateProfileFormState();
}

class _UpdateProfileFormState extends State<UpdateProfileForm> {
  String selectedValue = 'Select Gender';
  bool isChecked = false;
  DateTime? selectedDate;
  TextEditingController nameController = TextEditingController();
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              TextFormField(
                maxLines: 1,
                maxLength: 30,
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField(
                decoration: const InputDecoration(border: OutlineInputBorder()),
                elevation: 1,
                borderRadius: BorderRadius.circular(16),
                padding: EdgeInsets.all(2),
                value: selectedValue,
                items: ['Select Gender', 'Male', 'Female', 'Other'].map((
                  value,
                ) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
              ),
              const SizedBox(height: 24),
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
              if (isChecked) ...{
                Text(
                  ''' Name: ${nameController.text} \nGender: ${selectedValue.toString()} \nDOB: ${selectedDate.toString().split(' ')[0]} ''',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
              },

              CustomButton(
                days: isChecked ? 'Update Profile' : 'Submit',
                onPressede: () {
                  if (nameController.text.trim().isNotEmpty &&
                      selectedValue != 'Select Gender' &&
                      selectedDate != null) {
                    // debugPrint(
                    //   '$selectedValue ${nameController.text}  ${selectedDate.toString()}',
                    // );
                    isChecked = true;
                  } else {
                    // debugPrint('object');
                    isChecked = false;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please fill all fields')),
                    );
                  }
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
