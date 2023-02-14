import 'package:clean_arq/layers/presentation/controllers/person_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class PersonPage extends StatelessWidget {
  PersonController personController = GetIt.I.get<PersonController>();

  PersonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(personController.personEntity.name),
        ),
      ),
    );
  }
}
