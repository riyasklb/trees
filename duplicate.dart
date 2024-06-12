void main() {
  String value = 'abbccc';
  List<String> counts = stringCount(value);
  print(counts);
}

List<String> stringCount(String str) {
  List<String> result = [];

  // Count occurrences of each character
  for (int i = 0; i < str.length; i++) {
    String letter = str[i];
    print(letter);
    int count = 1;
    // Check if the current character is already counted
    if (!result.contains('$letter: $count')) {
      // print(result);
      // print(i);
      // Count occurrences of the current character
      for (int j = i + 1; j < str.length; j++) {
        print('${str[j]}=${letter}');
        if (str[j] == letter) {
          count++;
        }
      }
      // Add the character and its count to the result list
      result.add('$letter: $count');
    }
  }

  return result;
}
