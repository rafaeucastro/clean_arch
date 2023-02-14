import 'package:clean_arq/layers/data/datasource/local/save_person_local_datasource.dart';
import 'package:clean_arq/layers/data/datasource/save_person_local_datasource.dart';
import 'package:clean_arq/layers/data/repositories/save_person_repository_imp.dart';
import 'package:clean_arq/layers/domain/repository/save_person_repository.dart';
import 'package:clean_arq/layers/domain/usecases/save_person_usecase.dart';
import 'package:clean_arq/layers/domain/usecases/save_person_usecase_imp.dart';
import 'package:clean_arq/layers/presentation/controllers/person_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    //datasources
    getIt.registerLazySingleton<SavePersonDataSource>(
        () => SavePersonLocalDataSourceImp());
    //repositories
    getIt.registerLazySingleton<SavePersonRepository>(
        () => SavePersonRepositoryImp(getIt()));
    //usecases
    getIt.registerLazySingleton<SavePersonUsecase>(
        () => SavePersonUsecaseImp(getIt()));
    //controllers
    getIt.registerFactory<PersonController>(() => PersonController(getIt()));
  }
}
