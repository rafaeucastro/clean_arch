class PersonEntity {
  String _name;
  String category;

  PersonEntity(this._name, this.category);

  set newName(String newName) {
    _name = newName;
  }

  get name => _name;
}
