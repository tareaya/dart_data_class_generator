import 'package:dart_data_class_generator/src/features/persons/presentations/person_page.dart';
import 'package:dart_data_class_generator/src/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../users/presentation/user_list_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: [
            CustomButton(title: 'person_y', child: PersonPage()),
            CustomButton(title: 'User List', child: UserListPage()),
          ],
        ),
      ),
    );
  }
}
