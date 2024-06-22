class MaxHeap {
  List<int> _heap = [];

  int get size => _heap.length;

  void insert(int value) {
    _heap.add(value);
    _heapifyUp(_heap.length - 1);
  }

  int extractMax() {
    if (_heap.isEmpty) throw StateError('Heap is empty');
    int max = _heap.first;
    _heap[0] = _heap.removeLast();
    _heapifyDown(0);
    return max;
  }

  int getMax() {
    if (_heap.isEmpty) throw StateError('Heap is empty');
    return _heap.first;
  }

  void _heapifyUp(int index) {
    while (index > 0) {
      int parentIndex = (index - 1) ~/ 2;
      if (_heap[index] <= _heap[parentIndex]) break;
      _swap(index, parentIndex);
      index = parentIndex;
    }
  }

  void _heapifyDown(int index) {
    while (index < _heap.length) {
      int leftChildIndex = 2 * index + 1;
      int rightChildIndex = 2 * index + 2;
      int largestIndex = index;

      if (leftChildIndex < _heap.length && _heap[leftChildIndex] > _heap[largestIndex]) {
        largestIndex = leftChildIndex;
      }
      if (rightChildIndex < _heap.length && _heap[rightChildIndex] > _heap[largestIndex]) {
        largestIndex = rightChildIndex;
      }
      if (largestIndex == index) break;
      _swap(index, largestIndex);
      index = largestIndex;
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
  MaxHeap heap = MaxHeap();

  heap.insert(10);
  heap.insert(4);
  heap.insert(15);
  heap.insert(20);
  heap.insert(0);
  heap.insert(8);

  print('Heap after insertions:');
  heap.printHeap(); // Should print the current state of the heap

  print('Max value: ${heap.getMax()}'); // Should print 20

  print('Extract max: ${heap.extractMax()}'); // Should print 20
  print('Heap after extracting max:');
  heap.printHeap(); // Should print the state of the heap after extraction

  print('Extract max: ${heap.extractMax()}'); // Should print 15
  print('Heap after extracting max:');
  heap.printHeap(); // Should print the state of the heap after extraction
}
