import 'package:clean_arq/layers/domain/entities/person.dart';

abstract class SavePersonDataSource {
  bool call(PersonEntity person);
}
