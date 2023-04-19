void main(){
  // Principles of OOP
  

}

  // 1. Abstraction
  abstract class Vehicle {
    void goForward();
  }

  class Car implements Vehicle {
    @override
    void goForward(){
      print('we went forwards 4 miles in 2 minutes');
    }
  }
  // 2. Inheritance
  class FastCar extends Car {
    @override
    void goForward(){
      print('we went 20 miles in 2 minutes');
    }
  }
  // 3. Encapsulation

  // 4. Polymorphism
