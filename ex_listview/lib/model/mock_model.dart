class MockModel {

  final List<String> entries = ["Card 1", "Card 2", "Card 3", "Card 4"];
  final List<int> colorsCodes = [600, 200, 400, 100];

  @override
  String toString() => 'MockModel{entries: $entries, colorsCodes: $colorsCodes}';
}