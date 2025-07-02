class A {
  int x =10;
  double y = 1.5;

  void fun() => print('fun() of A Class');
  void test() => print('test() of A Class');
}

class B extends A {
  int z = 30;
  void demo() => print('demo() of B Class');
}

void main(){
  var obj = B();
  obj.x;
  print(obj.x);

}