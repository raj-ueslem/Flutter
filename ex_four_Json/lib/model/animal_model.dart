import 'dart:convert';

class Animal {
  String name;
  String image;

  Animal({required this.name, required this.image});

  factory Animal.fromMap(Map<String, dynamic>json) => Animal(name: json['name'], image: json['image']);

  @override
  String toString() {
    return 'Animals{name: $name}';
  }
}
class MockModel {
  static mockAnimal() {
   List<Animal> animals = [
     Animal(name: "Rex", image: 'assets/dog.jpg'),
     Animal(name: "Pix"),
     Animal(name: "Lulu"),
     Animal(name: "MotoMoto"),
     Animal(name: "Amendoim"),
     Animal(name: "Biscoito"),
     Animal(name: "Pipoca"),
     Animal(name: "Paçoca"),
     Animal(name: "Pepino")
   ];
   List<Map<String, dynamic>>list = [];

   for (var animal in animals) {
     list.add({'name': animal.name});
   }
   return jsonEncode(list);
  }
}