class PersonModel {
  int? id;
  String? firtName;
  String? lastName;
  bool? active;

  PersonModel({this.id, this.firtName, this.lastName, this.active});

  factory PersonModel.fromMap(Map<String, dynamic> map) => PersonModel(
        id: map['id'],
        firtName: map['firstName'],
        lastName: map['lastName'],
        active: map['active'],
      );

  @override
  String toString() {
    return 'PersonModel{id: $id, firtName: $firtName, lastName: $lastName, active: $active}';
  }
}
