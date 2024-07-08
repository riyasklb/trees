import 'dart:collection';

void main() {
  Graph graph = Graph();

  Vertex a = Vertex('A');
  Vertex b = Vertex('B');
  Vertex c = Vertex('C');
  Vertex d = Vertex('D');
  Vertex e = Vertex('E');

  graph.addVertex(a);
  graph.addVertex(b);
  graph.addVertex(c);
  graph.addVertex(d);
  graph.addVertex(e);

  graph.addEdge(a, b);
  graph.addEdge(a, c);
  graph.addEdge(b, d);
  graph.addEdge(c, e);

  print('DFS:');
  depthFirstSearch(a, {});

  print('\nBFS:');
  breadthFirstSearch(a);
}

void breadthFirstSearch(Vertex start) {
  Queue<Vertex> queue = Queue();
  Set<Vertex> visited = {};

  queue.add(start);
  visited.add(start);

  while (queue.isNotEmpty) {
    Vertex current = queue.removeFirst();
    print(current);

    for (Edge edge in current.edges) {
      if (!visited.contains(edge.to)) {
        queue.add(edge.to);
        visited.add(edge.to);
      }
    }
  }
}

void depthFirstSearch(Vertex start, Set<Vertex> visited) {
  if (visited.contains(start)) return;

  print(start);
  visited.add(start);

  for (Edge edge in start.edges) {
    depthFirstSearch(edge.to, visited);
  }
}

class Graph {
  List<Vertex> vertices;
  List<Edge> edges;

  Graph() : vertices = [], edges = [];

  void addVertex(Vertex vertex) {
    vertices.add(vertex);
  }

  void addEdge(Vertex from, Vertex to, [double weight = 1.0]) {
    Edge edge = Edge(from, to, weight);
    from.addEdge(edge);
    to.addEdge(edge); // For undirected graph, add both ways
    edges.add(edge);
  }

  Vertex getVertex(String value) {
    return vertices.firstWhere((vertex) => vertex.value == value);
  }
}

class Vertex {
  String value;
  List<Edge> edges;

  Vertex(this.value) : edges = [];

  void addEdge(Edge edge) {
    edges.add(edge);
  }

  @override
  String toString() {
    return value;
  }
}

class Edge {
  Vertex from;
  Vertex to;
  double weight;

  Edge(this.from, this.to, [this.weight = 1.0]);

  @override
  String toString() {
    return '${from.value} -> ${to.value} (weight: $weight)';
  }
}
