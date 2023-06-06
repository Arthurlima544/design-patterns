abstract class Car {
  void start();
  void stop();
  void changeGearPosition();
}

//! por utilizar Herança possa ser que me cause certos problemas como fazer uma classe carro
//! por a herança me obrigar a usar todos os métodos da Superclass, não podendo reduzir.

class CarWithoutHandGear extends Car {
  @override
  void changeGearPosition() {
    throw UnimplementedError();
  }

  @override
  void start() {
    throw UnimplementedError();
  }

  @override
  void stop() {
    throw UnimplementedError();
  }
}

//! Além disso a superclass Animal não possui encapsulamento, então a classe Bird
//! Conhece a classe Animal, podendo acessar seus elementos usando super. causando um firme acoplamento
//! entre a subclass e superclass

class Animal {
  final double size;

  Animal(this.size);
}

class Bird extends Animal {
  Bird(super.size);
}

//! Herança pode levar a heranças paralelas, que são muitos heranças alinhadas, se quisermos utilizar a 
//! classe Animal e especificar mais ainda, indo pra Organ, Cell, Molecule, Atom podemos isso vai gerar 
//! uma série de parametros que teram que ser passados pela classe Bird, causando muito mais complicação no código.