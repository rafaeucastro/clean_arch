import 'package:clean_arq/layers/data/datasource/local/save_person_local_datasource.dart';
import 'package:clean_arq/layers/data/repositories/save_person_repository_imp.dart';
import 'package:clean_arq/layers/domain/entities/person.dart';
import 'package:clean_arq/layers/domain/repository/save_person_repository.dart';
import 'package:clean_arq/layers/domain/usecases/save_person_usecase.dart';
import 'package:clean_arq/layers/domain/usecases/save_person_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    "Person is not null",
    () {
      PersonEntity person = PersonEntity("Julio", "Visitante");

      expect(person, isNotNull);
    },
  );

  test("Saber se a pessoa foi salva com sucesso", () {
    SavePersonUsecase usecase = SavePersonUsecaseImp(
      SavePersonRepositoryImp(
        SavePersonLocalDataSourceImp(),
      ),
    );

    var result = usecase(PersonEntity('Rafael', 'Membro'));

    expect(result, true);
  });
}
