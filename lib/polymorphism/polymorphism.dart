import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

class Animal {
  void makeSound() {
    throw UnimplementedError();
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    logger.i("Miau");
  }
}

class Cat2 implements Animal {
  @override
  void makeSound() {
    logger.i("Miau");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    logger.i("Au Au");
  }
}
