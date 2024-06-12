void main() {
  String value = "hai";
  print(string(value, 2));
}

 string(String str, int key) {
  int newKey = key % 26;
  List<String> result = List<String>.filled(str.length, "", );
  for (int i = 0; i < str.length; i++) {
    int letterPosition = str.codeUnitAt(i) + newKey;
    if (letterPosition <= 122) {
      result[i] = String.fromCharCode(letterPosition);
    } else {
      result[i] = String.fromCharCode(96 + letterPosition % 122);
    }
  }
  return result;
}
