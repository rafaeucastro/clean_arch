import 'package:clean_arq/layers/domain/entities/person.dart';
import 'package:clean_arq/layers/domain/usecases/save_person_usecase.dart';

class PersonController {
  SavePersonUsecase _savePersonUsecase;

  PersonController(this._savePersonUsecase) {
    savePerson(personEntity);
  }

  PersonEntity personEntity = PersonEntity("Rafael", "membro");

  bool savePerson(PersonEntity person) {
    return _savePersonUsecase(person);
  }
}
