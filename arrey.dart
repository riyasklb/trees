void main() {
  List<int> list = [2, 3, 1, 2, 2];
  int newLength = removeElement(list, 2);
  print(list.sublist(0, newLength)); // Output the list up to the new length
  print(newLength); // Output the new length
}

int removeElement(List<int> nums, int val) {
  int k = 0; // Pointer for the position of the next element to keep
  for (int i = 0; i < nums.length; i++) {
    print('--------------');
    if (nums[i] != val) {
      nums[k] = nums[i];
      k++;
    }
  }
  return k;
}
