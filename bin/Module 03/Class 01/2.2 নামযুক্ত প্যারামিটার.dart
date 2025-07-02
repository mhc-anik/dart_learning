void printInfo({String? name, int? age}) {
  print('Name: $name, Age: $age');
}

void main() {
  printInfo(name: 'Anik', age: 30);
  printInfo(name: 'Manha', age: 8);
  printInfo(name: '', age: 0);
}