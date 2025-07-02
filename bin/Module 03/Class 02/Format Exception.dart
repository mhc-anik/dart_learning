
main(){


  try {
    int number = int.parse('123s');
    print(number);
    print(number.runtimeType);
  }catch(e,s){
    print(e);
    print(s);
  }


}