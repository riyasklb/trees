void main() {
  List<int> list = [2, 4, 1, 1, 4, 57, 9];
  print(list);
  list = quicksort(list);
  print(list);
}

 quicksort( list) {
  quicksortHelper(list, 0, list.length - 1);
  return list;
}

 quicksortHelper(List<int> list, int startIdx, int endIdx) {
  if (startIdx >= endIdx) {
    return;
  }
  int pivotIdx = startIdx;
  int leftIdx = startIdx + 1;
  int rightIdx = endIdx;

  while (leftIdx <= rightIdx) {
    if (list[leftIdx] > list[pivotIdx] && list[rightIdx] < list[pivotIdx]) {
      swap(list, leftIdx, rightIdx);
      leftIdx++;
      rightIdx--;
    }
    if (list[leftIdx] <= list[pivotIdx]) {
      leftIdx++;
    }
    if (list[rightIdx] >= list[pivotIdx]) {
      rightIdx--;
    }
  }

  swap(list, pivotIdx, rightIdx);

  bool isLeftSubArraySmaller = rightIdx - 1 - startIdx < endIdx - (rightIdx + 1);
  if (isLeftSubArraySmaller) {
    quicksortHelper(list, startIdx, rightIdx - 1);
    quicksortHelper(list, rightIdx + 1, endIdx);
  } else {
    quicksortHelper(list, rightIdx + 1, endIdx);
    quicksortHelper(list, startIdx, rightIdx - 1);
  }
}

void swap(List<int> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}
