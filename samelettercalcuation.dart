void main() {
  String value = 'abbccc';stringcount(value);
}

stringcount(String str) {
  List<String> result = List<String>.filled(
    str.length,
    "",
  );
  for (int i = 0; i < str.length; i++) {
    int letterPosition = str.codeUnitAt(i);
 
        result[i] = String.fromCharCode(letterPosition);
         print(result);
   
  }
  
    return result;


}
