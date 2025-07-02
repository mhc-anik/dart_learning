void greet(String name, [String? title]) {
  print('Hello ${title ?? ''} $name');
}

void main() {
  greet('Anik');
  greet('Anik', 'Mr.');
}