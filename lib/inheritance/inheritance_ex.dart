/// A Herança é a habilidade de construir novas classes em cima
/// de classes já existentes. O maior benefício da herança é a reutilização
/// de código.

class Animal {
  void eat() {
    throw UnimplementedError();
  }

  void makeSound() {
    throw UnimplementedError();
  }
}

/// Na maioria das linguagens de programação uma subclasse
/// pode estender apenas uma superclasse. Por outro lado, qualquer
/// classe pode implementar várias interfaces ao mesmo tempo

class Cat extends Animal with FourLegged, OxtgenBreather {
  @override
  void breathe() {
    throw UnimplementedError();
  }

  @override
  void run(Reason reason) {
    throw UnimplementedError();
  }
}

abstract class FourLegged {
  void run(Reason reason);
}

abstract class OxtgenBreather {
  void breathe();
}

enum Reason { toHunt, isScared }
