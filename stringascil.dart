void main() {String value="hai";
print(string(value, 2));}

string(String str, int key) {
  int newkey = key % 26;
  List array = [str.length];
  for (int i = 0; i < str.length; i++) {
    int letterposition = str.codeUnitAt(i) + newkey;
    if (letterposition <= 122) {
      array[i] = letterposition;
    } else {
      array[i] = (96 + letterposition % 122);
    }
  }
  return array;
}
