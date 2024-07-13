void main(List<String> args) {
  List<int> list = [1, 3, 5, 6];
  int data = searchInsert(list, 5);
  print(data); // Output should be 1
  print(list); // List should remain unchanged
}

int searchInsert(List<int> nums, int target) {
  int left = 0;
  int right = nums.length - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;
    if (nums[mid] == target) {
      return mid;
    } else if (nums[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return left;
}
