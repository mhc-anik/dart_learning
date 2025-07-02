// a) Abstract class with protected variable and methods
abstract class Vehicle {
  int _speed = 0; // Protected variable

  void move(); // Abstract method

  void setSpeed(int speed) {
    if (speed >= 0) {
      _speed = speed;
    } else {
      print("Speed can't be negative.");
    }
  }

  int getSpeed() => _speed; // Optional: getter if access is needed within subclass
}

// b) Subclass implementing the abstract class
class Car extends Vehicle {
  @override
  void move() {
    print("The car is moving at $_speed km/h");
  }
}

// d) Main function to run the implementation
void main() {
  Car myCar = Car();
  myCar.setSpeed(80);
  myCar.move();
}