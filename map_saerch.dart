void main() {
  List<Map<String, dynamic>> listOfMaps = [
    {'id': 1, 'name': 'John', 'age': 30},
    {'id': 2, 'name': 'Alice', 'age': 25},
    {'id': 3, 'name': 'Bob', 'age': 35},
    {'id': 4, 'name': 'Alice', 'age': 40}
  ];
  var result = Searchpeople(listOfMaps, "age", 40);
   result = Searchpeople(listOfMaps, "name", "Alice");
  print(result);
}

List<Map<String, dynamic>> Searchpeople(
    List<Map<String, dynamic>> listOfMaps, String key, dynamic value) {
  return listOfMaps.where((person) => person[key] == value).toList();
}
