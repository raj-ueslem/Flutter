import 'dart:math';

class PersonModel {
  String? name;
  double? weight;
  double? height;

  PersonModel({this.name, this.weight, this.height});

  double calculateImc() {
    // var imc = weight! / (height! * height!);
    var imc = weight! / pow(height!, 2);
    // debugPrint("Imc: $imc");
    return imc;
  }

  @override
  String toString() {
    return 'PersonModel{name: $name, weight: $weight, height: $height Imc: ${calculateImc()}}';
  }
}