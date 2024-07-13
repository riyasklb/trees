//class BinarySearch {}

// binaryitrat(List list, int target) {
//   int starinx = 0;
//   int stopinx = list.length - 1;
//   while (starinx <= stopinx) {
//     print('========start==========');
//     int midlinx = starinx + (stopinx - starinx) ~/ 2;
//     print('midle${midlinx}');
//     if (list[midlinx] == target) {
//       print('========start if 1==========');
//       // print(midlinx);
//       return midlinx;
//     } else if (list[midlinx] > target) {
//       print('========start if 2==========');
//       stopinx = midlinx - 1;
//     } else if (list[midlinx] < target) {
//       print('========start if 3==========');
//       starinx = midlinx + 1;
//     }
//   }
//   return -1;
// }

binaryrec(List list, int target) {
  return binearyrechelper(list, target, 0, list.length - 1);
}

binearyrechelper(List list, int target, int startidx, int endidx) {
  if (startidx > endidx) {
    return -1;
  }
  int midlinx = startidx + (endidx - startidx) ~/ 2;
  print(' midle${midlinx}');
  if (list[midlinx] == target) {
    return midlinx;
  } else if (list[midlinx] > target) {
    print('1 midle${midlinx}');
    return binearyrechelper(list, target, startidx, midlinx - 1);
  } else {
    print('2 midle${midlinx}');
    return binearyrechelper(list, target, midlinx + 1, endidx);
  }
}

void main() {
  List list = [8, 2, 3, 4, 5, 6, 7];
  print(list);
  print('hlo world');
  print(binaryrec(list, 2 ));
}
