
import 'dart:ffi';
import 'dart:io';

/// 01. Student Performance System
// Create a program that accepts a student's name and 5 subject marks from user input.
// Then calculate the average, assign a grade based on rules (A, B, C, F),
// and store the result in a Map.
// Display all students with grade 'A'.


main(){

  print('What is the Name of Student :');
  String ? name = stdin.readLineSync();
  //print('Student Name : $name');

  print('Please Mention Subject 1 Name :');
  String ? sub1 = stdin.readLineSync();
  print('Pease Enter $sub1 Number :');
  int num1 = int.parse(stdin.readLineSync()!);


  print('Please Mention Subject 2 Name :');
  String ? sub2 = stdin.readLineSync();
  print('Pease Enter $sub2 Number :');
  int num2 = int.parse(stdin.readLineSync()!);


  print('Please Mention Subject 3 Name :');
  String ? sub3 = stdin.readLineSync();
  print('Pease Enter $sub3 Number :');
  int num3 = int.parse(stdin.readLineSync()!);


  print('Please Mention Subject 4 Name :');
  String ? sub4 = stdin.readLineSync();
  print('Pease Enter $sub4 Number :');
  int num4 = int.parse(stdin.readLineSync()!);


  print('Please Mention Subject 5 Name :');
  String ? sub5 = stdin.readLineSync();
  print('Pease Enter $sub5 Number :');
  int num5 = int.parse(stdin.readLineSync()!);

///Display ALl Subjects and Numbers by Map:

  print("-------------------------");
  print("Student's Name: $name");
  print("-------------------------");
  Map studentMarks ={
    sub1 : num1,
    sub2 : num2,
    sub3 : num3,
    sub4 : num4,
    sub5 : num5,
  };
  print('Subject : Marks');
  studentMarks.forEach((key,value){
    print('$key : $value');
  });


  ///calculate the average
  double avg = ((num1+num2+num3+num4+num5)/5);
  print('Average Marks : $avg');

  ///assign a grade based on rules (A, B, C, F)

 if(avg>= 80){
   print("Grade : A");}
 else if (avg>=70){
   print('Grade : B');}
 else if(avg>=60){
   print('Grade : C');}
 else{
   print('Grade : F');}




}
