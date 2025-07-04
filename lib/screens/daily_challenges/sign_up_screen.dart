import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';
import 'package:my_app/custom_widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  /*
  Day 10 Challenge (04/07/25): Sign-Up Form with Validation (UI only)

  Create a sign-up form with:
  - Full Name, Email, Password, Confirm Password fields
  - Birthdate (using a date picker)
  - Gender selection (radio buttons)
  - Address (multiline input)
  - Sign-Up button
  - Show warning text below if passwords don’t match (dummy check, no logic needed)
*/

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

enum Gender { male, female }

class _SignUpScreenState extends State<SignUpScreen> {
  Gender? selectedGender;
  DateTime? selectedDate;
  Future<void> _selectDate(BuildContext context) async {
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
      appBar: CustomAppBar(title: "SignUpScreen", fontSize: 20),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock_outline),
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () => _selectDate(context),
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
              const Text(
                'Gender',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: Gender.male,
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                  ),
                  const Text(
                    'Male',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Radio(
                    activeColor: Colors.blue,
                    value: Gender.female,
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                  ),
                  const Text(
                    'Female',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Home Address',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.home),
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 16),
              CustomButton(days: "SignUp", onPressede: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
