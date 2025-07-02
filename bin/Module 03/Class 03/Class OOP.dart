

class Mobile{
  int ? Year ;
  String ? modelName ;
  String ? brandName;

  charging(){ //Method
    print('$modelName have C Port');
  }

  unLock(){ // Method
    print('$modelName have Face Unlock');
  }
  
  static mobilePhone(){ // Static
    print("this is Static Key word");
}
  Mobile(){ // Constractor
    print('This is Constractor');
  }

}

main(){
  Mobile iPhone = Mobile();
  iPhone.modelName = '15 Pro Max';
  iPhone.brandName = 'iPhone';
  iPhone.Year = 2024;

  print(iPhone.brandName);
  print(iPhone.modelName);
  iPhone.charging();

  Mobile.mobilePhone();


}