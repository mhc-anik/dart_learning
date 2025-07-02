void greet(String name, [String title = 'Mr./Ms.']) {
  print('Hello $title $name');
}

void main() {
  greet('Anik');
  greet('Anik', 'Mr.');
}