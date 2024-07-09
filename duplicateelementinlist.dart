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
