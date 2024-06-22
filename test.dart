void main() {
  BinarySearchTree tree = BinarySearchTree();
  tree.insert(1);
  tree.insert(13);
  tree.insert(15);
  tree.insert(11);
  tree.insert(20);
  tree.remove(20);  // Attempt to remove a non-existent node
  print(tree.contains(20));  // Should print: true
}

class BinarySearchTree {
  Node? root;

  void insert(int data) {
    Node? currentnode = root;
    if (currentnode == null) {
      root = Node(data);
      return;
    }

    while (true) {
      if (data < currentnode!.data) {
        if (currentnode.left == null) {
          currentnode.left = Node(data);
          break;
        } else {
          currentnode = currentnode.left;
        }
      } else {
        if (currentnode.right == null) {
          currentnode.right = Node(data);
          break;
        } else {
          currentnode = currentnode.right;
        }
      }
    }
  }

  bool contains(int data) {
    Node? currentnode = root;
    while (currentnode != null) {
      if (data < currentnode.data) {
        currentnode = currentnode.left;
      } else if (data > currentnode.data) {
        currentnode = currentnode.right;
      } else {
        return true;
      }
    }
    return false;
  }

  void remove(int data) {
    root = removeHelper(data, root);
  }

  Node? removeHelper(int data, Node? currentnode) {
    if (currentnode == null) {
      return null;
    }

    if (data < currentnode.data) {
      currentnode.left = removeHelper(data, currentnode.left);
    } else if (data > currentnode.data) {
      currentnode.right = removeHelper(data, currentnode.right);
    } else {
      if (currentnode.left == null) {
        return currentnode.right;
      } else if (currentnode.right == null) {
        return currentnode.left;
      }

      currentnode.data = getMinValue(currentnode.right!);
      currentnode.right = removeHelper(currentnode.data, currentnode.right);
    }

    return currentnode;
  }

  int getMinValue(Node node) {
    Node current = node;
    while (current.left != null) {
      current = current.left!;
    }
    return current.data;
  }
}

class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}
