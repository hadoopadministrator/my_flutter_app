import 'package:flutter/material.dart';
import 'package:my_app/screens/daily_challenge_screen.dart';
import 'package:my_app/screens/daily_challenges/home_page.dart';
import 'package:my_app/screens/daily_challenges/sign_up_screen.dart';
import 'package:my_app/screens/daily_challenges/style_button_screen.dart';
import 'package:my_app/screens/daily_challenges/update_profile_form.dart';
import 'package:my_app/screens/demo_screens/passing_data_screen.dart';
import 'package:my_app/screens/demo_screens/receiver_data_screen.dart';
import 'package:my_app/screens/learning_demo_screen.dart';
import 'package:my_app/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: true,
      // home: const MainScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        'DailyChallengeScreen': (context) => const DailyChallengeScreen(),
        'LearningDemoScreen': (context) => const LearningDemoScreen(),
        'PassingDataScreen': (context) => const PassingDataScreen(),
        'ReceiverDataScreen': (context) => ReceiverDataScreen(),
        'StyleButtonScreen': (context) => StyleButtonScreen(),
        'SignUpScreen': (context) => SignUpScreen(),
        'HomePage': (context) => HomePage(),
        'UpdateProfileForm': (context) => UpdateProfileForm(),
      },
    );
  }
}
