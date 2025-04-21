import 'package:flutter/material.dart';

import '../domain/entity/persons.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  Persons generatePerson({
    required int id,
    required String name,
    required String email,
  }) {
    return Persons(id: id, name: name, email: email);
  }

  @override
  Widget build(BuildContext context) {
    final personOne = generatePerson(
      id: 1,
      name: 'Wilson Valencia',
      email: 'wilsonev.saldarriaga@hotmail.com',
    );
    final personTwo = Persons(
      id: 2,
      name: 'johana Valencia',
      email: 'joha_291@hotmail.com',
    );

    final personThree = generatePerson(
      id: 1,
      name: 'Wilson Valencia',
      email: 'wilsonev.saldarriaga@hotmail.com',
    );

    final personFour = Persons(
      id: 1,
      name: 'Wilson Valencia',
      email: 'wilsonev.saldarriaga@hotmail.com',
    );

    final personFive = personOne.copyWith(id: 4);
    final personSix = personOne.id == personThree.id;
    final personSeven = personOne.name == personThree.name;
    final personEight = personOne.name == personFour.name;

    print('1: $personOne');
    print('2: $personTwo');
    print('3: $personThree');
    print('4: $personFour');
    print('5: $personFive');
    print('6: $personSix');
    print('7: $personSeven');
    print('8: $personEight');
    print('1. hashcode: ${personOne.hashCode}');
    print('2. hashcode: ${personTwo.hashCode}');
    print('3. hashcode: ${personThree.hashCode}');
    print('4. hashcode: ${personFour.hashCode}');
    print('5. hashcode: ${personEight.hashCode}');

    return Scaffold(appBar: AppBar(title: const Text('Person_x')));
  }
}
