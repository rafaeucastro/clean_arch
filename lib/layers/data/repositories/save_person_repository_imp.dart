import 'package:clean_arq/layers/data/datasource/save_person_local_datasource.dart';
import 'package:clean_arq/layers/domain/entities/person.dart';
import 'package:clean_arq/layers/domain/repository/save_person_repository.dart';

class SavePersonRepositoryImp implements SavePersonRepository {
  SavePersonDataSource _savePersonDataSource;

  SavePersonRepositoryImp(this._savePersonDataSource);

  @override
  bool call(PersonEntity person) {
    return _savePersonDataSource(person);
  }
}
