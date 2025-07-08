import 'package:flutter/material.dart';
import 'package:my_app/custom_widgets/custom_appbar.dart';

class ScrollableListViewScreen extends StatelessWidget {
  const ScrollableListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> developerName = [
      'Aarav', // A
      'Benjamin', // B
      'Carter', // C
      'Daniel', // D
      'Ethan', // E
      'Felix', // F
      'Gabriel', // G
      'Henry', // H
      'Isaac', // I
      'Jack', // J
      'Kai', // K
      'Liam', // L
      'Mason', // M
      'Noah', // N
      'Oscar', // O
      'Parker', // P
      'Quinn', // Q
      'Ryan', // R
      'Samuel', // S
      'Thomas', // T
      'Umar', // U
      'Victor', // V
      'William', // W
      'Xavier', // X
      'Yusuf', // Y
      'Zane', // Z
    ];
    final List<String> positions = [
      'App Developer', // A
      'Backend Developer', // B
      'Cloud Engineer', // C
      'Data Analyst', // D
      'Embedded Systems Engineer', // E
      'Flutter Developer', // F
      'Graphic Designer', // G
      'Hardware Engineer', // H
      'iOS Developer', // I
      'Java Developer', // J
      'Kotlin Developer', // K
      'Linux Administrator', // L
      'Machine Learning Engineer', // M
      'Network Engineer', // N
      'Operations Manager', // O
      'Product Designer', // P
      'Quality Assurance Engineer', // Q
      'React Developer', // R
      'Software Tester', // S
      'Technical Writer', // T
      'UI/UX Designer', // U
      'Video Editor', // V
      'Web Developer', // W
      'XR Developer', // X
      'YouTube Content Creator', // Y
      'Zookeeper Engineer', // Z
    ];
    return Scaffold(
      appBar: CustomAppBar(title: 'ScrollableListView'),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.only(left: 12, right: 12),
          itemCount: developerName.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 14,
                ),

                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    developerName[index][0],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                title: Text(
                  '${developerName[index]} #${index + 1}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  'Role: ${positions[index]}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.green,
                  size: 25,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
