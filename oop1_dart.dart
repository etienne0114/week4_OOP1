import 'dart:io' show File;


// An object-oriented model that uses classes and inheritance
class Animal {
  String? name;
  Animal(this.name);

  void makeSound() {
    print('$name makes a sound'); 
  }
}

class Dog extends Animal {
  Dog(String? name) : super(name);

  @override
  void makeSound() {
    print('$name barks');
  }
}

// A class that implements an interface
abstract class Vehicle {
  void drive();
}

class Car implements Vehicle {
  @override
  void drive() {
    print('Car is being driven');
  }
}

// A class that overrides an inherited method
class Cat extends Animal {
  Cat(String? name) : super(name);

  @override
  void makeSound() {
    print('$name meows');
  }
}

// An instance of a class that is initialized with data from a file
class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  @override
  String toString() {
    return 'Name: $name, Age: $age';
  }
}

import 'dart:io';

void main() {
  // Initialize an instance of a class with data from a file
  var file = File('person_data.txt');
  
  if (file.existsSync()) {
    List<String> lines = file.readAsLinesSync();
    if (lines.isNotEmpty && lines.length >= 2) {
      var person = Person(lines[0], int.tryParse(lines[1]) ?? 0);
      print(person);
    } else {
      print('File does not contain enough data.');
    }
  } else {
    print('File does not exist.');
  }

  // A method that demonstrates the use of a loop
  List<Animal> animals = [Dog('Buddy'), Cat('Whiskers')];

  for (var animal in animals) {
    animal.makeSound();
  }
}

