void main() {
  String value = "hai";
  print(encrypt(value, 2));
}

String encrypt(String str, int key) {
  String result = '';
  for (int i = 0; i < str.length; i++) {
    int newCharCode = str.codeUnitAt(i) + key;
    if (newCharCode > 122) {
      newCharCode = 26;
    }print('======${newCharCode}');
    result += String.fromCharCode(newCharCode);
   // print('======${result}');
  }
  return result;
}
