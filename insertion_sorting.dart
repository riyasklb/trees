void main(List<String> args) {
  List list = [11, 22, 44, 33,];
  List current = insertionsort(list);
  print(current);
}

insertionsort(List list) {
  for (int i = 1; i <= list.length - 1; i++) {
    int current = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > current) {
      print('------------${list[3]}');

      list[j + 1] = list[j];
      print('------------${list[3]}');
      print('------------${list[j]}');

      j--;
      print('------------${list[j]}');
    }

    list[j + 1] = current;
    print('------c------${list[j + 1] = current}');
     print('------j------${list[j]}');
    print('555555555555555555555');
  }
  return list;
}
