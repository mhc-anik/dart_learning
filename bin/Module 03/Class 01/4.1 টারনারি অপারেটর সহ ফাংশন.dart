String checkEvenOdd(int number) => number % 2 == 0 ? 'Even' : 'Odd';

void main() {
  print(checkEvenOdd(5));
  print(checkEvenOdd(8));
  print(checkEvenOdd(111));
}