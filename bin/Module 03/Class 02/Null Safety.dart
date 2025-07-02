main(){
  String ? name;
  name = 'Anik';

  print('Well Come to ${name ?? 'Guest'}');
  print(name?.length);

  int age = 18;
  age > 18 ?  print("You are Audlt") : print('Your are Kid');

}