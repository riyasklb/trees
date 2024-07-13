void main() {
  List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];

  int len = removeDuplicates(nums);

  print("The length of the array after removing duplicates is $len");
  print("Array after removing duplicates: ${nums.sublist(0, len)}");
}

int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  int uniqueIndex = 0;

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[uniqueIndex]) {
      uniqueIndex++;
      nums[uniqueIndex] = nums[i];
    }
  
  }

  return uniqueIndex + 1;
 
}
// void main() {
//   List<int> list = [3, 3, 1, 2, 2];
//   int newLength = removeElement(list, 2);
//   print(list.sublist(0, newLength));
//   print(newLength);
// }

// int removeElement(List<int> nums, int val) {
//   int k = 0; // Pointer for the position of the next element to keep
//   for (int i = 0; i < nums.length; i++) {
//     if (nums[i] != val) {
//       nums[k] = nums[i];
//       k++;
//     }
//   }
//   return k;
// }