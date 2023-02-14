import 'package:clean_arq/layers/domain/entities/person.dart';

abstract class SavePersonRepository {
  bool call(PersonEntity person);
}
