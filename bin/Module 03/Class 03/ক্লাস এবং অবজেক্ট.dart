class Person {
  // প্রোপার্টি (ভেরিয়েবল)
  String name;
  int age;

  // কনস্ট্রাক্টর
  Person(this.name, this.age);

  // মেথড (ফাংশন)
  void introduce() {
    print('আমার নাম $name এবং বয়স $age বছর');
  }
}

void main() {
  // অবজেক্ট ক্রিয়েশন
  var person1 = Person('Anik', 37);
  person1.introduce();
}