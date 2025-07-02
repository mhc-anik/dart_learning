import 'dart:io';

void main(){

  print('What is your Age :');
  int ? age;

  try{ // ইনভ্যালিড ইনপুটে ক্র্যাশ করবে না For that use Try
  age = int.parse(stdin.readLineSync()!);
  print('Your Age is : $age');


    if (age < 18) {
      print('You are now Child');
    }

    else if (age >= 18 && age < 60) {
      print('You are now Audult');
    }

    else if (age >= 60) {
      print('You are old');
    }

  }catch (error) { // ত্রুটির তথ্য ধারণ করে: যখন int.parse()-এ সমস্যা হয় | আপনি চাইলে অন্য নামও দিতে পারেন
     print('Invalid Age');
   }


}