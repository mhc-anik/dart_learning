import 'dart:io';


main(){
  String ? name;
  print("Enter Your Name :");
  name = stdin.readLineSync();

  int ? age;
  print("Enter Your Age :");
  age = int.tryParse(stdin.readLineSync()!);


  print("My Name is : $name");
  print("My Age is : $age");

}