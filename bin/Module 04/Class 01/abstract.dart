abstract class Animal{
  String name;
  Animal(this.name);

  eat(){
    print('$name is eating');
  }

  makeSound(){
    print('$name is making Sound');
  }
}

class Dog extends Animal{
  String color, name;
  Dog(this.color, this.name) : super(name);

}

main(){
  
  Dog tom = Dog('Kala', 'Tommy');
  tom.makeSound();
  tom.eat();
}
