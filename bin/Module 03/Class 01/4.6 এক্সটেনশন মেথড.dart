extension NumberParsing on String {
  int toIntOrZero() => int.tryParse(this) ?? 0;
}

void main() {
  print('123'.toIntOrZero()); // 123
  print('abc'.toIntOrZero()); // 0
}