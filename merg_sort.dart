



// Merge sort implementation in Dart

// Merge function to merge two sorted halves
List<T> merge<T extends Comparable>(List<T> left, List<T> right) {
  List<T> merged = [];
  int leftIndex = 0, rightIndex = 0;

  // Merge elements in sorted order
  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex].compareTo(right[rightIndex]) <= 0) {
      merged.add(left[leftIndex]);
      leftIndex++;
    } else {
      merged.add(right[rightIndex]);
      rightIndex++;
    }
  }

  // Append remaining elements from left and right sublists
  merged.addAll(left.sublist(leftIndex));
  merged.addAll(right.sublist(rightIndex));
  
  return merged;
}

// Merge sort function
List<T> mergeSort<T extends Comparable>(List<T> list) {
  if (list.length <= 1) {
    return list; // Base case: list with 0 or 1 element is already sorted
  }

  int middle = list.length ~/ 2;
  List<T> left = mergeSort(list.sublist(0, middle));
  List<T> right = mergeSort(list.sublist(middle));

  return merge(left, right);
}

void main() {
  // Example usage:
  List<int> numbers = [38, 27, 43, 3, 9, 82, 10];
  print('Original list: $numbers');
  
  List<int> sortedNumbers = mergeSort(numbers);
  print('Sorted list: $sortedNumbers');
}
