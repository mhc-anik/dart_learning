import 'dart:ffi';

class father {
  String ? name;
  int ? age;

  display(){
    print('name is : $name');
    print("age is : $age");
}
}

class child extends father {
  int ? income;

  display() {
    //print('name is : $name');
    //print("age is : $age");
    super.display();
    print("father income is : $income");
  }
}

main(){

  father f = father();
  f.name = 'Musleh Uddin';
  f.age = 70;
  print('-----------father details----------');
  f.display();


  child c = child();
  c.name = 'Anik';
  c.age =38;
  c.income = 390000;
  print('-----------child details----------');
  c.display();


}
