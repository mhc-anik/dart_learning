import 'dart:io';

void main() {
  print("আপনার নাম লিখুন:");
  String? name = stdin.readLineSync();
  print("স্বাগতম, $name!");
}