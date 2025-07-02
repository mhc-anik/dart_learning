import 'dart:io';

main(){

  double ? number1;
  print("Enter Your 1st Number :");
  number1 = double.parse(stdin.readLineSync()!);

  double ? number2;
  print("Enter Your 2nd Number :");
  number2 = double.parse(stdin.readLineSync()!);


  print("1st Number + 2nd Number: ${number1 + number2}");



}