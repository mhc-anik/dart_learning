void operate(Function operation) {
  operation();
}

void main() {
  operate(() => print('Operating...'));
}