void main() {
  List list = [2, 4, 1, 1, 4, 57, 9];
  print(list);
  list=qucksort(list);
  print(list);
}

qucksort(List list) {
  qucksorthelper(list, 0, list.length - 1);
  return list;
}

qucksorthelper(List list, int startindx, int endindex) {
  if (startindx >= endindex) {
    return;
  }
  int pivot = startindx;
  int leftindex = startindx + 1;
  int rightindex = endindex;
  while (leftindex <= rightindex) {
    if (list[leftindex] > list[pivot] && list[rightindex] < list[pivot]) {
      swap(list, leftindex, rightindex);
      leftindex++;
      rightindex--;
    }
    if (list[leftindex] <= list[pivot]) {
      leftindex++;
    }
  }
  if (list[rightindex] >= list[pivot]) {
    leftindex--;
  }
  swap(list, rightindex, pivot);
  qucksorthelper(list, startindx, rightindex - 1);
  qucksorthelper(list, rightindex + 1, endindex);
}

swap(List list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}


