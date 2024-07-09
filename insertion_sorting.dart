void main(List<String> args) {
  List list = [1, 4, 5, 6, 2];
 List current =insertionsort(list);
 print(current);
}

insertionsort(List list) {
  for (int i = 1; i <= list.length - 1; i++) {
    int current = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > current) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = current;
  }
  return list;
}
