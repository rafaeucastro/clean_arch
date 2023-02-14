import 'package:clean_arq/layers/domain/entities/person.dart';
import 'package:clean_arq/layers/domain/repository/save_person_repository.dart';
import 'package:clean_arq/layers/domain/usecases/save_person_usecase.dart';

class SavePersonUsecaseImp implements SavePersonUsecase {
  SavePersonRepository _savePersonRepository;

  SavePersonUsecaseImp(this._savePersonRepository);

  @override
  bool call(PersonEntity person) {
    return _savePersonRepository(person);
  }
}
