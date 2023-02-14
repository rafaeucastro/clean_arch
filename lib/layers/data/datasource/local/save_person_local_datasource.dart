import 'package:clean_arq/layers/data/datasource/save_person_local_datasource.dart';
import 'package:clean_arq/layers/domain/entities/person.dart';

class SavePersonLocalDataSourceImp implements SavePersonDataSource {
  List<PersonEntity> people = [];

  @override
  bool call(PersonEntity person) {
    people.add(person);
    return people.contains(person);
  }
}
