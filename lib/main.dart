import 'package:clean_arq/core/inject/inject.dart';
import 'package:clean_arq/layers/presentation/UI/pages/person_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  Inject.init();
  runApp(PersonCleanArch());
}

class PersonCleanArch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PersonPage(),
    );
  }
}
