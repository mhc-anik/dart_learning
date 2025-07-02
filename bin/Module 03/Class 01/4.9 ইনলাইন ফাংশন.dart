void performOperation(int a, int b, int Function(int, int) operation) {
  print(operation(a, b));
}

void main() {
  performOperation(5, 3, (x, y) => x + y); // 8
  performOperation(5, 3, (x, y) => x * y); // 15
}