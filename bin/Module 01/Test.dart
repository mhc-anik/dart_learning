import 'dart:io';

main (){


  double ? number1;
  print("Enter your 1st Number :");
  number1 = double.tryParse(stdin.readLineSync()!);

  double ? number2;
  print("Enter Your 2nd Number :");
  number2=double.tryParse(stdin.readLineSync()!);

  double num1 = number1 ?? 0.0;
  double num2 = number2 ?? 0.0;

  print("Number1 + Number2 = ${(num1 + num2)}");
  print("Number1 - Number2 = ${(num1 - num2)}");
  print("Number1 * Number2 = ${(num1 * num2)}");
  print("Number1 / Number2 = ${(num1 / num2)}");

}
