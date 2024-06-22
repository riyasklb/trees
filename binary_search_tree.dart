void main() {
  BinarySearchTree tree = BinarySearchTree();
  tree.insert(1);
  tree.insert(13);
  tree.insert(15);
  tree.insert(11);
  tree.insert(20);
  tree.preorder();
  //print(tree.contains(20));
}

class BinarySearchTree {
  Node? root;
  insert(int data) {
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
  //   void printInOrder() {
  //   _printInOrder(root);
  // }

  // void _printInOrder(Node? node) {
  //   if (node == null) {
  //     return;
  //   }
  //   _printInOrder(node.left);
  //   print(node.data);
  //   _printInOrder(node.right);
  // }

 void preorder() {
    inorderhelper(root);
  }

  inorderhelper(Node? node) {
    if (node == null) {
      return;
      
    }
    inorderhelper(node.left);
      print('${node.data}aaa');
      inorderhelper(node.right);
       print('${node.data}bb');
  }

  contains(int data) {
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

  remove(int data) {
    root = removeHelper(data, root!, null);
  }

  int getvalue(Node currentnode) {
    if (currentnode.left == null) {
      return currentnode.data;
    } else {
      return getvalue(currentnode.left!);
    }
  }

  removeHelper(int data, Node currentnode, Node? parentnode) {
    while (currentnode != null) {
      if (data < currentnode.data) {
        parentnode = currentnode;
        currentnode != currentnode.left;
      } else if (data > currentnode.data) {
        parentnode = currentnode;
        currentnode != currentnode.right;
      } else {
        if (currentnode.left != null && currentnode.right != null) {
          currentnode.data = getvalue(currentnode.right!);
          removeHelper(currentnode.data, currentnode.right!, currentnode);
        } else {
          if (parentnode == null) {
            if (currentnode.right == null) {
              root = currentnode.left;
            } else {
              root = currentnode.right;
            }
          } else {
            if (parentnode.left == currentnode) {
              if (currentnode.right == null) {
                parentnode.left = currentnode.left;
              } else {
                parentnode.left = currentnode.right;
              }
            } else {
              if (currentnode.right == null) {
                parentnode.right = currentnode.left;
              } else {
                parentnode.right = currentnode.right;
              }
            }
          }
        }
        break;
      }
    }
  }
}

class Node {
  int data;
  Node? left;
  Node? right;

  Node(
    this.data,
  );
}
