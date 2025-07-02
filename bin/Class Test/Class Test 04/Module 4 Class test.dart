abstract class Vehicle {
  // Protected variable (in Dart, we use underscore prefix to denote private/protected)
  int _speed = 0;

  // Abstract method
  void move();

  // Non-abstract method to set speed
  void setSpeed(int speed) {
    _speed = speed;
  }

  // Getter for speed to allow read access while maintaining encapsulation
  int get speed => _speed;
}

class Car extends Vehicle {
  @override
  void move() {
    print("The car is moving at $_speed km/h");
  }
}

void main() {
  // Create a Car object
  Car myCar = Car();

  // Set the speed using the setSpeed method
  myCar.setSpeed(60);

  // Call the move method
  myCar.move();

  // This would cause an error because _speed is private
  // myCar._speed = 100;

  // But we can access it through the getter if we added one (which we did)
  print("Current speed (via getter): ${myCar.speed} km/h");
}