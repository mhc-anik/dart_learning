class Father {
  String ? name = 'Musleh';
  String ? address = 'Adaoir';
  int ? age = 70;

  profetion(){
    print('Teaching');
  }
}

class Child extends Father {
  int ? salary = 390;
  int ? age = 71;

  //String ? address = 'Uttara';

  lobLocation(){
    print('Gazipur, Kaliakor');
  }


  @override
  profetion() {
    print("Liberty Knitwear Limited");
    print('Garments Factory Work');
  }

}

main(){
  Child c = Child();
  //c.address = 'uttara';

  print(c.address);
  c.profetion();
  //print(c.lobLocation());
  c.lobLocation();

  print(c.age);


}