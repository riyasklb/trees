class MinHeap {
  List<int> _heap = [];

  int get size => _heap.length;

  void insert(int value) {
    _heap.add(value);
    _heapifyUp(_heap.length - 1);
  }

  int extractMin() {
    if (_heap.isEmpty) throw StateError('Heap is empty');
    int min = _heap.first;
    _heap[0] = _heap.removeLast();
    _heapifyDown(0);
    return min;
  }

  int getMin() {
    if (_heap.isEmpty) throw StateError('Heap is empty');
    return _heap.first;
  }

  void _heapifyUp(int index) {
    while (index > 0) {
      int parentIndex = (index - 1) ~/ 2;
      if (_heap[index] >= _heap[parentIndex]) break;
      _swap(index, parentIndex);
      index = parentIndex;
    }
  }

  void _heapifyDown(int index) {
    while (index < _heap.length) {
      int leftChildIndex = 2 * index + 1;
      int rightChildIndex = 2 * index + 2;
      int smallestIndex = index;

      if (leftChildIndex < _heap.length && _heap[leftChildIndex] < _heap[smallestIndex]) {
        smallestIndex = leftChildIndex;
      }
      if (rightChildIndex < _heap.length && _heap[rightChildIndex] < _heap[smallestIndex]) {
        smallestIndex = rightChildIndex;
      }
      if (smallestIndex == index) break;
      _swap(index, smallestIndex);
      index = smallestIndex;
    }
  }

  void _swap(int index1, int index2) {
    int temp = _heap[index1];
    _heap[index1] = _heap[index2];
    _heap[index2] = temp;
  }
   void printHeap() {
    print(_heap);
  }
}



 


void main() {
  MinHeap heap = MinHeap();

  heap.insert(10);
  heap.insert(4);
  heap.insert(15);
  heap.insert(20);
  heap.insert(0);
  heap.insert(8);

  print('Min value: ${heap.getMin()}'); // Should print 0

  print('Extract min: ${heap.extractMin()}'); // Should print 0
  print('Min value after extract: ${heap.getMin()}'); // Should print 4

  print('Extract min: ${heap.extractMin()}'); // Should print 4
  print('Min value after extract: ${heap.getMin()}');
  
   heap.printHeap(); // Should print 8
}
