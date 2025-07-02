class ostadStudent{
  void joinClass(){

  }
  void joinExam(){

  }
  void assainmentSubmit(){

  }
}

class person implements ostadStudent {
  @override
  void assainmentSubmit() {
   print('will submit assainment on 16 jun 25');
  }

  @override
  void joinClass() {
    print('Join from Mobile');
  }

  @override
  void joinExam() {
    // TODO: implement joinExam
  }

}

class person1 extends ostadStudent {

  void joinClass() {
    print('Join Class from Labtop');
  }
}

main(){
  person anik = person();
  person1 manha = person1();
  anik.assainmentSubmit();
  anik.joinClass();
  manha.joinClass();
}