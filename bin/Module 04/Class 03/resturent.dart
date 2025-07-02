class resturent{

  int _id = 10105;

  int get resturentID => _id;

  set setID(int value) => _id = value;

  order(String item){
    print("$item Orderd" );
  }

  prepairItem(String item){
    print("$item Prepair");
  }

  shopingItem(String item){
    print("$item Shoping");
  }

}