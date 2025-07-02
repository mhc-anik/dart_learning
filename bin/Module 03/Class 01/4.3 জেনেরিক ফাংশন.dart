T getFirst<T>(List<T> items) => items.first;

void main() {
  print(getFirst([1, 2, 3])); // 1
  print(getFirst(['a', 'b', 'c'])); // a
}