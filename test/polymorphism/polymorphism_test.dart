import 'package:design_patterns/polymorphism/polymorphism.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should print diferent Sounds for whatever animal', () async {
    Animal animal = Animal();
    Cat cat = Cat();
    Dog dog = Dog();
    //! Isso não deve acontecer certo?
    //animal.makeSound();
    print("Cat Sound:");
    cat.makeSound();
    print("Dog Sound:");
    dog.makeSound();
  });
}
