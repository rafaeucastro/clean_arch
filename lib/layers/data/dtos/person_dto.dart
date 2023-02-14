import 'package:clean_arq/layers/domain/entities/person.dart';

class PersonDto extends PersonEntity {
  String name;
  String category;

  PersonDto({
    required this.name,
    required this.category,
  }) : super(name, category);

  Map toMap() {
    return {
      'Nome': name,
      'Categoria': category,
    };
  }

  PersonDto fromMap(Map map) {
    return PersonDto(category: map['Nome'], name: map['Categoria']);
  }
}
