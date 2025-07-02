mixin Swimming {
  void swim(){
    print('Swimming');
  }
  void Fly(){
    print('Will not Fly');
  }
}

mixin Flying {

  void swim(){
    print('Will not swimming');
  }

  void Fly(){
    print('Flying');
  }

}

class Duck with Flying,Swimming {
  void everthing(){
    swim();
    Fly();
  }
}

main(){
  var duck = Duck();
  duck.everthing();
}