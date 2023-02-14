import 'package:clean_arq/layers/domain/entities/person.dart';

abstract class SavePersonUsecase {
  bool call(PersonEntity person);
}
